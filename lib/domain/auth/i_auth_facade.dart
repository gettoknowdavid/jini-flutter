import 'package:dartz/dartz.dart';
import 'package:jini/domain/auth/auth_failure.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signUp({
    required IName name,
    required IEmailAddress email,
    required IPassword password,
    required IGender gender,
    required IBloodGroup bloodGroup,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required IEmailAddress email,
    required IPassword password,
  });

  Future<Either<AuthFailure, Unit>> resetPassword({
    required IEmailAddress email,
  });

  Future<Either<AuthFailure, Unit>> updateUser(JUser jUser);

  Future<Option<JUser?>> getUser();

  Future<void> sendVerificationEmail();

  Future<Option<Either<AuthFailure, bool?>>> checkEmailVerified();

  Future<Either<AuthFailure, bool?>> donorRequirementsMet();

  Future<void> signOut();
}
