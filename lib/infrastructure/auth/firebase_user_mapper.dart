import 'package:injectable/injectable.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/geo.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';

@lazySingleton
class FirebaseUserMapper {
  JUser? toDomain(JUserDto? user) {
    if (user == null) {
      return null;
    }

    return JUser(
      uid: Uid.fromUniqueString(user.uid),
      age: user.age == null ? null : IAge(user.age!, user.userType!),
      bloodGroup: user.bloodGroup == null ? null : IBloodGroup(user.bloodGroup),
      city: user.city == null ? null : user.city,
      eligible: user.eligible == null ? null : user.eligible,
      email: IEmailAddress(user.email),
      formComplete: user.formComplete == null ? null : user.formComplete,
      gender: user.gender == null ? null : IGender(user.gender!),
      height: user.height == null ? null : IHeight(user.height!),
      initEdit: user.initEdit == null ? null : user.initEdit,
      location: user.location == null
          ? null
          : Geo(user.location!.latitude, user.location!.latitude),
      name: IName(user.name),
      phone: user.phone == null ? null : IPhone(user.phone!),
      userType: IUserType(user.userType),
      weight:
          user.weight == null ? null : IWeight(user.weight!, user.userType!),
    );
  }
}
