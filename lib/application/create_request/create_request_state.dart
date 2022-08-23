part of 'create_request_bloc.dart';

@freezed
class CreateRequestState with _$CreateRequestState {
  const factory CreateRequestState({
    required JUser user,
    required IBloodGroup bloodGroup,
    required DateTime createdAt,
    required bool isCreating,
    required bool showErrorMessages,
    required Option<Either<RequestFailure, Unit>> createOption,
  }) = _CreateRequestState;

  factory CreateRequestState.initial() => CreateRequestState(
        user: JUser.empty(),
        bloodGroup: IBloodGroup(null),
        createdAt: DateTime.now(),
        isCreating: false,
        showErrorMessages: false,
        createOption: none(),
      );
}
