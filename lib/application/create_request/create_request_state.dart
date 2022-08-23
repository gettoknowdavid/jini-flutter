part of 'create_request_bloc.dart';

@freezed
class CreateRequestState with _$CreateRequestState {
  const factory CreateRequestState({
    required JUser user,
    required DateTime timeAdded,
      required bool showErrorMessages,
  }) =_CreateRequestState;

  const factory CreateRequestState.initial() => CreateRequestState();
}
