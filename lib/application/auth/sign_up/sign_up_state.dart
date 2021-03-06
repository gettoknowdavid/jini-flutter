part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required IName name,
    required IEmailAddress email,
    required IPassword password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        name: IName(''),
        email: IEmailAddress(''),
        password: IPassword(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
