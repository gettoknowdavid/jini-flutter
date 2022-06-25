import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
    final Logger? _log = Logger();
  final FirebaseAuth _auth = FirebaseAuth.instance;
}
