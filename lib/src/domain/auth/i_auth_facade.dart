import 'package:dartz/dartz.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:jini/core/enums/user_type.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/value_objects.dart';

abstract class IAuthFacade {
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
}
