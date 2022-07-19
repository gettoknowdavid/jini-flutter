import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/domain/auth/i_auth_facade.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/infrastructure/auth/firebase_user_mapper.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firebaseUserMapper,
  );
  final FirebaseAuth _firebaseAuth;
  final FirebaseUserMapper _firebaseUserMapper;

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    required IEmailAddress email,
    required IPassword password,
  }) async {
    final _email = email.getOrCrash()!;
    final _password = password.getOrCrash()!;

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(email: _email, password: _password)
          .then((_) {
        return right(unit);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailOrPassword());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required IName name,
    required IEmailAddress email,
    required IPassword password,
  }) async {
    final _email = email.getOrCrash()!;
    final _password = password.getOrCrash()!;
    final _name = name.getOrCrash()!;

    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((value) {
        _firebaseAuth.currentUser!.updateDisplayName(_name);

        final _user = JUserDto(
          uid: value.user!.uid,
          name: _name,
          email: _email,
          formComplete: false,
          userType: UserType.recipient,
          initEdit: false,
        );

        jUsersRef.doc(value.user!.uid).set(_user);

        _firebaseAuth.currentUser!.sendEmailVerification();

        return right(unit);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<JUser?>> getUser() async {
    final _fUser = _firebaseAuth.currentUser;
    if (_fUser != null) {
      final _jUser = await jUsersRef.doc(_fUser.uid).get().then((v) => v.data);
      return optionOf(_firebaseUserMapper.toDomain(_jUser));
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<void> signOut() => Future.wait([_firebaseAuth.signOut()]);

  @override
  Future<Either<AuthFailure, Unit>> updateUser(JUser jUser) async {
    try {
      final jUserDto = JUserDto.fromDomain(jUser);

      await jUsersRef.doc(jUserDto.uid).set(jUserDto);

      return (right(unit));
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<Either<AuthFailure, bool?>>> checkEmailVerified() async {
    if (_firebaseAuth.currentUser != null) {
      await _firebaseAuth.currentUser!.reload();
      final _value = _firebaseAuth.currentUser!.emailVerified;
      if (_value) {
        return optionOf(right(_value));
      } else {
        return optionOf(left(const AuthFailure.emailNotVerified()));
      }
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    return await _firebaseAuth.currentUser!.sendEmailVerification();
  }

  @override
  Future<Either<AuthFailure, bool?>> donorRequirementsMet() async {
    final _fUser = _firebaseAuth.currentUser;
    final _jUser = await jUsersRef.doc(_fUser?.uid).get().then((v) => v.data);
    if (_jUser!.formComplete!) {
      return right(true);
    } else {
      return left(const AuthFailure.donorNotEligible());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({
    required IEmailAddress email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email.getOrCrash()!);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<Either<AuthFailure, bool?>>> isProfileComplete() async {
    if (_firebaseAuth.currentUser != null) {
      final _fUser = _firebaseAuth.currentUser;
      final _jUser = await jUsersRef.doc(_fUser?.uid).get().then((v) => v.data);
      if (_jUser!.initEdit! == true) {
        return optionOf(right(true));
      } else {
        return optionOf(left(const AuthFailure.donorNotEligible()));
      }
    } else {
      return optionOf(null);
    }
  }
}
