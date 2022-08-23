import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/infrastructure/core/geo_point_converter.dart';

part 'j_user_dtos.freezed.dart';
part 'j_user_dtos.g.dart';

// @JsonSerializable(explicitToJson: true, createFactory: false)
const firestoreSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
);

@freezed
@firestoreSerializable
class JUserDto with _$JUserDto {
  factory JUserDto({
    required String uid,
    required String? name,
    Gender? gender,
    DateTime? dob,
    num? age,
    num? height,
    num? weight,
    required String? email,
    String? phone,
    String? city,
    String? avatar,
    @GeoConverter() GeoPoint? location,
    BloodGroup? bloodGroup,
    UserType? userType,
    bool? eligible,
    bool? formComplete,
    bool? initEdit,
  }) = _JUserDto;

  factory JUserDto.fromDomain(JUser jUser) {
    final _geo = jUser.location!.getOrCrash();
    final _bloodGroup = jUser.bloodGroup!.getOrCrash();

    return JUserDto(
      uid: jUser.uid.getOrCrash()!,
      name: jUser.name != null ? jUser.name!.getOrCrash() : null,
      gender: jUser.gender != null ? jUser.gender!.getOrCrash() : null,
      dob: jUser.dob != null ? jUser.dob!.getOrCrash() : null,
      age: jUser.age != null ? jUser.age!.getOrCrash() : null,
      height: jUser.height != null ? jUser.height!.getOrCrash() : null,
      weight: jUser.weight != null ? jUser.weight!.getOrCrash() : null,
      email: jUser.email != null ? jUser.email!.getOrCrash() : null,
      phone: jUser.phone != null ? jUser.phone!.getOrCrash() : null,
      city: jUser.city,
      avatar: jUser.avatar != null ? jUser.avatar! : null,
      location: jUser.location != null ? _geo : null,
      bloodGroup: jUser.bloodGroup != null ? _bloodGroup : null,
      userType: jUser.userType != null ? jUser.userType!.getOrCrash() : null,
      eligible: jUser.eligible,
      formComplete: jUser.formComplete,
      initEdit: jUser.initEdit,
    );
  }

  factory JUserDto.fromJson(Map<String, Object?> json) =>
      _$JUserDtoFromJson(json);

  Map<String, Object?> toJson() => _$JUserDtoToJson(this);
}

@Collection<JUserDto>('users')
final jUsersRef = JUserDtoCollectionReference();

