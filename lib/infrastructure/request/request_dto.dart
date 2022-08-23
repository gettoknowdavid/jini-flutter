import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/request/request.dart';
import 'package:jini/infrastructure/core/geo_point_converter.dart';

part 'request_dto.freezed.dart';
part 'request_dto.g.dart';

const firestoreSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  anyMap: true,
);

@freezed
@firestoreSerializable
class RequestDto with _$RequestDto {
  factory RequestDto({
    required String uid,
    required String userUid,
    required String userName,
    @GeoConverter() required GeoPoint userLocation,
    String? userAvatar,
    required BloodGroup bloodGroup,
    required DateTime createdAt,
  }) = _RequestDto;

  factory RequestDto.fromDomain(Request request) {
    return RequestDto(
      uid: request.uid.getOrCrash()!,
      userUid: request.userUid.getOrCrash()!,
      userName: request.userName.getOrCrash()!,
      userLocation: GeoPoint(
        request.userLocation.getOrCrash()!.latitude,
        request.userLocation.getOrCrash()!.longitude,
      ),
      userAvatar: request.userAvatar,
      bloodGroup: request.bloodGroup.getOrCrash()!,
      createdAt: request.createdAt,
    );
  }

  factory RequestDto.fromJson(Map<String, Object?> json) =>
      _$RequestDtoFromJson(json);

  Map<String, Object?> toJson() => _$RequestDtoToJson(this);
}

@Collection<RequestDto>('requests')
final requestsRef = RequestDtoCollectionReference();
