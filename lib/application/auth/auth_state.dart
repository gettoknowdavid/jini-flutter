part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  // const factory AuthState.loading() = AuthLoading;
  const factory AuthState.notLoading() = AuthNotLoading;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.verified() = Verified;
  const factory AuthState.unverified() = Unverified;
  const factory AuthState.awaitingVerified() = AwaitingVerified;
  const factory AuthState.donorFormCompleted() = DonorFormCompleted;
  const factory AuthState.donorFormNotCompleted() = DonorFormNotCompleted;
  const factory AuthState.profileCompleted() = ProfileCompleted;
  const factory AuthState.profileNotCompleted() = ProfileNotCompleted;
}
