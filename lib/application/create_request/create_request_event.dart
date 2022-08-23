part of 'create_request_bloc.dart';

@freezed
class CreateRequestEvent with _$CreateRequestEvent {
  const factory CreateRequestEvent.started() = _Started;

  const factory CreateRequestEvent.bloodGroupSelected(BloodGroup bloodGroup) =
      _BloodGroupSelected;
}
