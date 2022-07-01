part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.nameChanged(String name) = NameChanged;

  const factory SignUpEvent.emailChanged(String email) = EmailChanged;

  const factory SignUpEvent.passwordChanged(String password) = PasswordChanged;

  const factory SignUpEvent.bloodGroupChanged(BloodGroup bloodGroup) =
      BloodGroupChanged;

  const factory SignUpEvent.userTypeChanged(UserType userType) =
      UserTypeChanged;

  const factory SignUpEvent.signUpPressed() = SignUpPressed;
}
