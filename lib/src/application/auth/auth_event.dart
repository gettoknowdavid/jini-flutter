part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.authCheckVerified() = _AuthCheckVerified;
  const factory AuthEvent.checkDonorRequirementsMet() =
      _CheckDonorRequirementsMet;
  const factory AuthEvent.sendVerifiedEmail() = _SendVerifiedEmail;
  const factory AuthEvent.authSignedOut() = _SignedOut;
}
