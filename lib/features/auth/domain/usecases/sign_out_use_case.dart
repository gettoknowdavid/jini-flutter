import 'package:jini/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/core/usecase/use_case.dart';
import 'package:jini/features/auth/app/auth_result.dart';
import 'package:jini/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase implements UseCase<AuthResult?, NoParams> {
  SignOutUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, AuthResult?>?> call(NoParams params) async {
    return await repository.signOut();
  }
}
