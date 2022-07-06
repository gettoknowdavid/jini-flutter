part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required IEmailAddress email,
    required IPassword password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: IEmailAddress(''),
        password: IPassword('', isSignIn: true),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
