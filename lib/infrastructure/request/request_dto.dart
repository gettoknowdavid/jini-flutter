import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/request/request.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';

part 'request_dto.freezed.dart';
part 'request_dto.g.dart';

const firestoreSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: false,
);

@freezed
@firestoreSerializable
class RequestDto with _$RequestDto {
  factory RequestDto({
    required String uid,
    required JUserDto user,
    required BloodGroup bloodGroup,
    required DateTime createdAt,
  }) = _RequestDto;

  factory RequestDto.fromDomain(Request request) {
    return RequestDto(
      uid: request.uid.getOrCrash()!,
      user: JUserDto.fromDomain(request.user),
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
