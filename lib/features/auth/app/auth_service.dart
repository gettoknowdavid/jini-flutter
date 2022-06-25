import 'package:jini/features/auth/domain/entities/j_user.dart';
import 'package:logger/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final Logger _log = Logger();
  final FirebaseAuth _auth = FirebaseAuth.instance;
}

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
