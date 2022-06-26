part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String name,
    required EmailAddress email,
    required Password password,
    required Gender gender,
    required UserType userType,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        name: '',
        email: EmailAddress(''),
        password: Password(''),
        gender: Gender.other,
        userType: UserType.donor,
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
