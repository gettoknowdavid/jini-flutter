part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isEditing,
    required IName name,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        isEditing: false,
        name: IName(''),
      );
  factory ProfileState.editing() => ProfileState(
        isEditing: true,
        name: IName(''),
      );
}
