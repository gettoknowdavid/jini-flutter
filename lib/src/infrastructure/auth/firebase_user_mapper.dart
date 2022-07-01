import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/j_user.dart';
import 'package:jini/src/domain/auth/value_objects.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/domain/core/geo.dart';
import 'package:jini/src/domain/core/value_object.dart';
import 'package:jini/src/infrastructure/auth/j_user_dtos.dart';

@lazySingleton
class FirebaseUserMapper {
  JUser? toDomain(JUserDto? _) {
    if (_ == null) {
      return null;
    }

    return JUser(
      uid: Uid.fromUniqueString(_.uid),
      age: _.age == null ? IAge(0) : IAge(_.age!),
      bloodGroup: IBloodGroup(_.bloodGroup),
      city: _.city == null ? null : _.city,
      eligible: _.eligible == null ? null : _.eligible,
      email: IEmailAddress(_.email),
      formComplete: _.formComplete == null ? null : _.formComplete,
      gender: _.gender == null ? IGender(Gender.other) : IGender(_.gender!),
      height: _.height == null ? IHeight(0) : IHeight(5.6),
      initEdit: _.initEdit == null ? null : _.initEdit,
      location: _.location == null
          ? null
          : Geo(_.location!.latitude, _.location!.latitude),
      name: IName(_.name),
      phone: _.phone == null ? IPhone('0180285225') : IPhone(_.phone!),
      userType: IUserType(_.userType),
      weight: _.weight == null ? IWeight(0) : IWeight(_.weight!),
    );
  }
}
