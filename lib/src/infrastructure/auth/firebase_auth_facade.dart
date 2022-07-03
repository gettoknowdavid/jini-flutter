import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/auth/j_user.dart';
import 'package:jini/src/domain/auth/value_objects.dart';
import 'package:jini/src/domain/core/user_type.dart';
import 'package:jini/src/infrastructure/auth/firebase_user_mapper.dart';
import 'package:jini/src/infrastructure/auth/j_user_dtos.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firebaseUserMapper,
    this._jUserRef,
  );
  final FirebaseAuth _firebaseAuth;
  final FirebaseUserMapper _firebaseUserMapper;
  final JUserDtoCollectionReference _jUserRef;

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
        print(_);
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
    required IGender gender,
    required IBloodGroup bloodGroup,
  }) async {
    final _email = email.getOrCrash()!;
    final _password = password.getOrCrash()!;
    final _name = name.getOrCrash()!;
    final _gender = gender.getOrCrash()!;
    final _bloodGroup = bloodGroup.getOrCrash()!;

    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((value) {
        _firebaseAuth.currentUser!.updateDisplayName(_name);

        final _user = JUserDto(
          uid: value.user!.uid,
          name: _name,
          email: _email,
          bloodGroup: _bloodGroup,
          gender: _gender,
          formComplete: false,
          userType: UserType.recipient,
          initEdit: true,
        );

        _jUserRef.doc(value.user!.uid).set(_user);

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
    final _fUser = await _firebaseAuth.currentUser;
    if (_fUser != null) {
      final _jUser = await jUsersRef.doc(_fUser.uid).get().then((v) => v.data);
      return await optionOf(_firebaseUserMapper.toDomain(_jUser));
    } else {
      return await optionOf(_firebaseUserMapper.toDomain(null));
    }
  }

  @override
  Future<void> signOut() => Future.wait([_firebaseAuth.signOut()]);

  @override
  Future<Either<AuthFailure, Unit>> updateUser(JUser jUser) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, bool?>> checkEmailVerified() async {
    await _firebaseAuth.currentUser!.reload();
    final _value = await _firebaseAuth.currentUser!.emailVerified;
    if (_value) {
      return right(_value);
    } else {
      return left(const AuthFailure.emailNotVerified());
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    return await _firebaseAuth.currentUser!.sendEmailVerification();
  }

  @override
  Future<Either<AuthFailure, bool?>> donorRequirementsMet() async {
    final _fUser = await _firebaseAuth.currentUser;
    final _jUser = await jUsersRef.doc(_fUser?.uid).get().then((v) => v.data);
    if (_jUser!.formComplete!) {
      return right(true);
    } else {
      return left(const AuthFailure.donorNotEligible());
    }
  }
}
