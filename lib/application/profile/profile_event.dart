part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initialized() = _Initialized;
  const factory ProfileEvent.nameChanged(String name) = _NameChanged;
  const factory ProfileEvent.emailChanged(String email) = _EmailChanged;
  const factory ProfileEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory ProfileEvent.genderChanged(Gender gender) = _GenderChanged;
  const factory ProfileEvent.bloodGroupChanged(BloodGroup bloodGroup) =
      _BloodGroupChanged;
  const factory ProfileEvent.userTypeChanged(UserType userType) =
      _UserTypeChanged;
  const factory ProfileEvent.ageChanged(num age, UserType userType) =
      _AgeChanged;
  const factory ProfileEvent.heightChanged(num height) = _HeightChanged;
  const factory ProfileEvent.weightChanged(num weight, UserType userType) =
      _WeightChanged;
  const factory ProfileEvent.avatarChanged() = _AvatarChanged;
  const factory ProfileEvent.editPressed(bool value) = _ProfileEditPressed;
  const factory ProfileEvent.profileUpdated() = _ProfileUpdated;
}
