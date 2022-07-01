import 'package:dartz/dartz.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/j_user.dart';
import 'package:jini/src/domain/auth/value_objects.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/domain/core/user_type.dart';

abstract class IAuthFacade {
  Future<Option<JUser>> getUser();

  Future<Either<AuthFailure, Unit>> signUp({
    required String name,
    required EmailAddress email,
    required Password password,
    required Gender gender,
    required UserType userType,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required EmailAddress email,
    required Password password,
  });

  Future<void> signOut();
}
