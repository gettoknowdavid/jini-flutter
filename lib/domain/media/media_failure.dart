import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_failure.freezed.dart';

@freezed
class MediaFailure with _$MediaFailure {
  const factory MediaFailure.serverError() = MediaServerError;
}
