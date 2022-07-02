import 'package:dartz/dartz.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/j_user.dart';
import 'package:jini/src/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<JUser?>> getUser();

  Future<Either<AuthFailure, Unit>> signUp({
    required IName name,
    required IEmailAddress email,
    required IPassword password,
    required IGender gender,
    required IBloodGroup bloodGroup,
    required IUserType userType,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required IEmailAddress email,
    required IPassword password,
  });

  Future<Either<AuthFailure, Unit>> updateUser(JUser jUser);

  Future<void> signOut();
}
