import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.severError() = ServerError;
  const factory AuthFailure.emailInUse() = EmailInUse;
  const factory AuthFailure.invalidEmailOrPassword() = InvalidEmailOrPassword;
}
