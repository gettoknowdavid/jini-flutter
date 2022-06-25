import 'package:jini/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/core/usecase/sign_up_params.dart';
import 'package:jini/core/usecase/use_case.dart';
import 'package:jini/features/auth/app/auth_result.dart';
import 'package:jini/features/auth/domain/repositories/auth_repository.dart';

class SignUpUseCase implements UseCase<AuthResult?, SignUpParams> {
  SignUpUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, AuthResult?>> call(SignUpParams params) async {
    return await repository.signUp(
      params.email,
      params.email,
      params.email,
      params.userType,
      params.gender,
    );
  }
}
