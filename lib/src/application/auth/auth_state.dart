part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.verified() = _Verified;
  const factory AuthState.unverified() = _Unverified;
  const factory AuthState.awaitingVerified() = _AwaitingVerified;
  const factory AuthState.donorFormCompleted() = _DonorFormCompleted;
  const factory AuthState.donorFormNotCompleted() = _DonorFormNotCompleted;
}
