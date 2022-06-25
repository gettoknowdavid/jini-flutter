import 'package:equatable/equatable.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:jini/core/enums/user_type.dart';

class SignUpParams extends Equatable {
  SignUpParams({
    required this.name,
    required this.email,
    required this.password,
    required this.userType,
    required this.gender,
  });

  final String name;
  final String email;
  final String password;
  final UserType userType;
  final Gender gender;

  @override
  List<Object> get props => [name, email, password, userType, gender];
}
