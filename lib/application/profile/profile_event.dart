part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.editPressed(bool value) = _ProfileEditPressed;
  const factory ProfileEvent.profileUpdated() = _ProfileUpdated;
}
