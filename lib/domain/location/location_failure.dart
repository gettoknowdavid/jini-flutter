import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.permissionDenied() = PermissionDenied;
  const factory LocationFailure.unknownLocation() = UnknownLocation;
}
