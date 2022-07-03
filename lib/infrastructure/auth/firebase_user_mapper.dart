import 'package:injectable/injectable.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/gender.dart';
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
      age: user.age == null ? IAge(0) : IAge(user.age!),
      bloodGroup: IBloodGroup(user.bloodGroup),
      city: user.city == null ? null : user.city,
      eligible: user.eligible == null ? null : user.eligible,
      email: IEmailAddress(user.email),
      formComplete: user.formComplete == null ? null : user.formComplete,
      gender:
          user.gender == null ? IGender(Gender.other) : IGender(user.gender!),
      height: user.height == null ? IHeight(0) : IHeight(5.6),
      initEdit: user.initEdit == null ? null : user.initEdit,
      location: user.location == null
          ? null
          : Geo(user.location!.latitude, user.location!.latitude),
      name: IName(user.name),
      phone: user.phone == null ? IPhone('01860285225') : IPhone(user.phone!),
      userType: IUserType(user.userType),
      weight: user.weight == null ? IWeight(0) : IWeight(user.weight!),
    );
  }
}
