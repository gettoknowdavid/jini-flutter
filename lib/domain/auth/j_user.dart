import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/entity.dart';
import 'package:jini/domain/core/geo.dart';
import 'package:jini/domain/core/value_object.dart';

part 'j_user.freezed.dart';

@freezed
class JUser with _$JUser implements IEntity {
  const factory JUser({
    required Uid uid,
    required IName? name,
    IGender? gender,
    IDateOfBirth? dob,
    IAge? age,
    IHeight? height,
    IWeight? weight,
    required IEmailAddress? email,
    IPhone? phone,
    String? city,
    String? avatar,
    Geo? location,
    IBloodGroup? bloodGroup,
    IUserType? userType,
    bool? eligible,
    bool? formComplete,
    bool? initEdit,
  }) = _JUser;

  factory JUser.empty() => JUser(
        uid: Uid(),
        name: IName(''),
        email: IEmailAddress(''),
      );
}
