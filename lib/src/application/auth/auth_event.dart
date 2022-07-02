part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.reload() = _AuthReload;
  const factory AuthEvent.sendEmailVerification() = _SendEmailVerification;
  const factory AuthEvent.authSignedOut() = _SignedOut;
}
