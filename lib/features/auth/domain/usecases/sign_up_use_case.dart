// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import 'package:jini/core/enums/gender.dart';
// import 'package:jini/core/enums/user_type.dart';
// import 'package:jini/core/error/failure.dart';
// import 'package:dartz/dartz.dart';
// import 'package:jini/core/usecase/use_case.dart';
// import 'package:jini/features/auth/app/auth_result.dart';
// import 'package:jini/features/auth/domain/repositories/auth_repository.dart';

// @lazySingleton
// class SignUpUseCase implements UseCase<AuthResult?, SignUpParams> {
//   SignUpUseCase(this.repository);

//   final AuthRepository repository;

//   @override
//   Future<Either<Failure, AuthResult?>> call(SignUpParams params) async {
//     return await repository.signUp(
//       params.email,
//       params.email,
//       params.email,
//       params.userType,
//       params.gender,
//     );
//   }
// }

// class SignUpParams extends Equatable {
//   SignUpParams({
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.userType,
//     required this.gender,
//   });

//   final String name;
//   final String email;
//   final String password;
//   final UserType userType;
//   final Gender gender;

//   @override
//   List<Object> get props => [name, email, password, userType, gender];
// }
