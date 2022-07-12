part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({required bool isEditing}) = _ProfileState;

  factory ProfileState.initial() => ProfileState(isEditing: false);
}
