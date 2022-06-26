import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/features/auth/data/models/j_user_model.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/core/enums/user_type.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/auth/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(this._firebaseAuth, this._ref);
  final FirebaseAuth _firebaseAuth;
  final CollectionReference _ref;

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    required EmailAddress email,
    required Password password,
  }) async {
    final _email = email.getOrCrash();
    final _password = password.getOrCrash();

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(email: _email, password: _password)
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailOrPassword());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required String name,
    required EmailAddress email,
    required Password password,
    required Gender gender,
    required UserType userType,
  }) async {
    final _email = email.getOrCrash();
    final _password = password.getOrCrash();

    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((value) {
        _firebaseAuth.currentUser!.updateDisplayName(name);

        final _user = JUserModel(
          uid: value.user!.uid,
          name: name,
          email: _email,
          userType: userType,
          formComplete: false,
          gender: gender,
          initEdit: 0,
        );

        _ref.doc(value.user!.uid).set(_user.toJson());

        return right(unit);
      });
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
