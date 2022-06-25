

import 'package:firebase_auth/firebase_auth.dart';
import 'package:jini/features/auth/domain/entities/j_user.dart';

class AuthResult {
  /// The [FirebaseAuth] user
  final User? user;

  /// The [JUser] registered with the [FirebaseAuth]
  /// user uid
  final JUser? jUser;

  /// Contains the error message for the request
  /// if any
  final String? errorMessage;

  /// Contains the error code for the request
  /// if any
  final String? exceptionCode;

  AuthResult({this.user, this.jUser})
      : errorMessage = null,
        exceptionCode = null;

  AuthResult.error({this.errorMessage, this.exceptionCode})
      : user = null,
        jUser = null;

  /// Returns true if the response has an error associated with it
  bool get hasError => errorMessage != null && errorMessage!.isNotEmpty;
}

String getErrorMessage(FirebaseAuthException exception) {
  switch (exception.code.toLowerCase()) {
    case 'email-already-in-use':
      return 'An account with this email already exists.\n Try signing in.';
    case 'invalid-email':
      return 'The email you\'re using is invalid. Please use a valid email.';
    case 'operation-not-allowed':
      return 'The authentication is not enabled on Firebase.';
    case 'weak-password':
      return 'Your password is too weak. Please use a stronger password.';
    case 'wrong-password':
      return "Urm, wrong email or password";
    case 'user-not-found':
      return 'Oops! We have no record of this user';
    default:
      return exception.message ??
          'Something went wrong on our side. Please try again';
  }
}
