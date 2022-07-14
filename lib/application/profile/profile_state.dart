part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required JUser user,
    required bool isEditing,
    required bool isSaving,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        user: JUser.empty(),
        isEditing: false,
        isSaving: false,
        showErrorMessages: false,
        saveFailureOrSuccessOption: none(),
      );
}
