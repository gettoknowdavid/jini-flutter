import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/j_user.dart';
import 'package:jini/src/domain/core/value_object.dart';

@lazySingleton
class FirebaseUserMapper {
  JUser? toDomain(User? _) {
    if (_ == null) {
      return null;
    }

    return JUser(
      uid: Uid.fromUniqueString(_.uid),
    );
  }
}
