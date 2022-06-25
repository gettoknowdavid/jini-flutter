import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

abstract class Failure extends Equatable {
  Failure({this.message});

  /// Contains the error message for the request
  /// if any
  final String? message;

  @override
  List<Object?> get props => [message];
}

class AuthFailure extends Failure {
  AuthFailure(this.exception) : super(message: getErrorMessage(exception));

  final FirebaseAuthException exception;
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
