import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure with _$RequestFailure {
  const factory RequestFailure.serverError() = _ServerError;
  const factory RequestFailure.alreadyExists() = _AlreadyExists;
}
