import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jini/common/app_constants.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:jini/core/enums/user_type.dart';
import 'package:jini/features/auth/app/auth_result.dart';
import 'package:jini/features/auth/domain/entities/j_user.dart';
import 'package:logger/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService(this.ref);

  final CollectionReference<JUser> ref;
  final Logger _log = Logger();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  String? get authUserUid => _auth.currentUser!.uid;

  bool get hasUser => _auth.currentUser != null;

  Future<AuthResult> signUp({
    required String name,
    required String email,
    required String password,
    required UserType userType,
    required Gender gender,
  }) async {
    try {
      UserCredential _authUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _auth.currentUser!.updateDisplayName(name);

      final _jUser = JUser(
        uid: _authUser.user!.uid,
        name: name,
        email: email,
        userType: userType,
        gender: gender,
        formComplete: false,
      );

      await ref.doc(_authUser.user!.uid).set(_jUser).timeout(AUTH_TIMEOUT);

      return AuthResult(user: _authUser.user, jUser: _jUser);
    } on FirebaseAuthException catch (e) {
      _log.e(e.message);
      return AuthResult.error(
        errorMessage: getErrorMessage(e),
        exceptionCode: e.code,
      );
    } on Exception catch (e) {
      _log.e('A general exception has occurred. $e');
      return AuthResult.error(
        errorMessage: 'Seems like we an issue. Please try again.',
      );
    }
  }

  Future<AuthResult> signIn(String email, String password) async {
    try {
      UserCredential _authUser = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final _jUserDoc =
          await ref.doc(_authUser.user!.uid).get().timeout(AUTH_TIMEOUT);

      return AuthResult(user: _authUser.user, jUser: _jUserDoc.data());
    } on FirebaseAuthException catch (e) {
      _log.e(e.message);
      return AuthResult.error(
        errorMessage: getErrorMessage(e),
        exceptionCode: e.code,
      );
    } on Exception catch (e) {
      _log.e('A general exception has occurred. $e');
      return AuthResult.error(
        errorMessage: 'Seems like we an issue. Please try again.',
      );
    }
  }

  Future<AuthResult> signOut() async {
    try {
      await _auth.signOut();
      return AuthResult(user: null, jUser: null);
    } on FirebaseAuthException catch (e) {
      return AuthResult.error(
        errorMessage: getErrorMessage(e),
        exceptionCode: e.code,
      );
    } on Exception catch (e) {
      _log.e('A general exception has occurred. $e');
      return AuthResult.error(
        errorMessage: 'Seems like we an issue. Please try again.',
      );
    }
  }
}
