import 'package:dartz/dartz.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:jini/core/enums/user_type.dart';
import 'package:jini/core/error/failure.dart';
import 'package:jini/features/auth/app/auth_result.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResult>>? signUp(
    String name,
    String email,
    String password,
    UserType userType,
    Gender gender,
  );

  Future<Either<Failure, AuthResult>>? signIn(String email, String password);

  Future<Either<Failure, AuthResult>>? signOut();
}
