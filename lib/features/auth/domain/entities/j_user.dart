import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jini/common/models/geo.dart';
import 'package:jini/core/enums/blood_group.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:jini/core/enums/user_type.dart';

class JUser extends Equatable {
  const JUser({
    required this.uid,
    this.name,
    this.gender,
    this.age,
    this.height,
    this.weight,
    required this.email,
    this.phone,
    this.city,
    this.location,
    this.bloodGroup,
    required this.userType,
    this.eligible,
    this.formComplete,
    this.initEdit,
  });

  /// The unique ID of the user / from [FirebaseAuth]
  final String uid;

  /// The name of the user
  final String? name;

  /// The [Gender] of the user
  final Gender? gender;

  // / The age of the user / Users who are of [UserType.donor] must be 18 years /
  // and above; [UserType.recipient] users can be of any / age
  final num? age;

  /// The hight of the user
  final num? height;

  // / The weight of the user. / Users registered as [UserType.donor] must weigh
  final num? weight;

  /// The mobile phone of the user
  final String email;

  /// The mobile phone of the user
  final String? phone;

  /// The city of the user
  final String? city;

  /// The current location of the user
  final Geo? location;

  /// The [BloodGroup] of the user
  final BloodGroup? bloodGroup;

  // / The [UserType] of the user / Can be a [UserType.donor] or a
  // [UserType.recipient]
  final UserType userType;

  // / Bool to check if user registered as a donor is / eligible to be a donor or
  // not
  final bool? eligible;

  // / Returns true if the user registered as a donor /  has filled the donor
  // requirements form. / Will return false otherwise.
  final bool? formComplete;

  /// Checks for initial profile edit for each newly register / user
  final int? initEdit;

  @override
  List<Object?> get props => [
        uid,
        name,
        gender,
        age,
        height,
        weight,
        email,
        phone,
        city,
        location,
        bloodGroup,
        userType,
        eligible,
        formComplete,
        initEdit
      ];
}
