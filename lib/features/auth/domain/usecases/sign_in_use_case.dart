import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:jini/core/error/failure.dart';
import 'package:jini/core/usecase/use_case.dart';
import 'package:jini/features/auth/app/auth_result.dart';
import 'package:jini/features/auth/domain/repositories/auth_repository.dart';

class SignInUseCase implements UseCase<AuthResult?, SignInParams> {
  SignInUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, AuthResult?>?> call(SignInParams params) async {
    return await repository.signIn(params.email, params.password);
  }
}

class SignInParams extends Equatable {
  SignInParams({required this.email, required this.password});

  final String email;
  final String password;

  @override
  List<Object> get props => [email, password];
}
