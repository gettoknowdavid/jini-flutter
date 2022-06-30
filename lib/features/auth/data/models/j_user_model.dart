// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
// import 'package:jini/core/enums/blood_group.dart';
// import 'package:jini/core/enums/gender.dart';
// import 'package:jini/core/enums/user_type.dart';
// import 'package:jini/features/auth/domain/entities/j_user.dart';
// import 'package:json_annotation/json_annotation.dart';

// part 'j_user_model.g.dart';

// @JsonSerializable(explicitToJson: true)
// class JUserModel extends JUser {
//   JUserModel({
//     required super.uid,
//     super.name,
//     super.gender,
//     super.age,
//     super.height,
//     super.weight,
//     required super.email,
//     super.phone,
//     super.city,
//     location,
//     super.bloodGroup,
//     required super.userType,
//     super.eligible,
//     super.formComplete,
//     super.initEdit,
//   }) : super(location: location);

//   factory JUserModel.fromJson(Map<String, Object?> json) =>
//       _$JUserModelFromJson(json);

//   Map<String, Object?> toJson() => _$JUserModelToJson(this);
// }

// @Collection<JUserModel>('users')
// final usersRef = JUserModelCollectionReference();
