// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'j_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JUserDto _$JUserDtoFromJson(Map<String, dynamic> json) {
  return _JUserDto.fromJson(json);
}

/// @nodoc
mixin _$JUserDto {
  String get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  num? get age => throw _privateConstructorUsedError;
  num? get height => throw _privateConstructorUsedError;
  num? get weight => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @GeoConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  BloodGroup? get bloodGroup => throw _privateConstructorUsedError;
  UserType? get userType => throw _privateConstructorUsedError;
  bool? get eligible => throw _privateConstructorUsedError;
  bool? get formComplete => throw _privateConstructorUsedError;
  bool? get initEdit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JUserDtoCopyWith<JUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JUserDtoCopyWith<$Res> {
  factory $JUserDtoCopyWith(JUserDto value, $Res Function(JUserDto) then) =
      _$JUserDtoCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String? name,
      Gender? gender,
      DateTime? dob,
      num? age,
      num? height,
      num? weight,
      String? email,
      String? phone,
      String? city,
      String? avatar,
      @GeoConverter() GeoPoint? location,
      BloodGroup? bloodGroup,
      UserType? userType,
      bool? eligible,
      bool? formComplete,
      bool? initEdit});
}

/// @nodoc
class _$JUserDtoCopyWithImpl<$Res> implements $JUserDtoCopyWith<$Res> {
  _$JUserDtoCopyWithImpl(this._value, this._then);

  final JUserDto _value;
  // ignore: unused_field
  final $Res Function(JUserDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? avatar = freezed,
    Object? location = freezed,
    Object? bloodGroup = freezed,
    Object? userType = freezed,
    Object? eligible = freezed,
    Object? formComplete = freezed,
    Object? initEdit = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as num?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as BloodGroup?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      eligible: eligible == freezed
          ? _value.eligible
          : eligible // ignore: cast_nullable_to_non_nullable
              as bool?,
      formComplete: formComplete == freezed
          ? _value.formComplete
          : formComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      initEdit: initEdit == freezed
          ? _value.initEdit
          : initEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_JUserDtoCopyWith<$Res> implements $JUserDtoCopyWith<$Res> {
  factory _$$_JUserDtoCopyWith(
          _$_JUserDto value, $Res Function(_$_JUserDto) then) =
      __$$_JUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String? name,
      Gender? gender,
      DateTime? dob,
      num? age,
      num? height,
      num? weight,
      String? email,
      String? phone,
      String? city,
      String? avatar,
      @GeoConverter() GeoPoint? location,
      BloodGroup? bloodGroup,
      UserType? userType,
      bool? eligible,
      bool? formComplete,
      bool? initEdit});
}

/// @nodoc
class __$$_JUserDtoCopyWithImpl<$Res> extends _$JUserDtoCopyWithImpl<$Res>
    implements _$$_JUserDtoCopyWith<$Res> {
  __$$_JUserDtoCopyWithImpl(
      _$_JUserDto _value, $Res Function(_$_JUserDto) _then)
      : super(_value, (v) => _then(v as _$_JUserDto));

  @override
  _$_JUserDto get _value => super._value as _$_JUserDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? avatar = freezed,
    Object? location = freezed,
    Object? bloodGroup = freezed,
    Object? userType = freezed,
    Object? eligible = freezed,
    Object? formComplete = freezed,
    Object? initEdit = freezed,
  }) {
    return _then(_$_JUserDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as num?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as BloodGroup?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      eligible: eligible == freezed
          ? _value.eligible
          : eligible // ignore: cast_nullable_to_non_nullable
              as bool?,
      formComplete: formComplete == freezed
          ? _value.formComplete
          : formComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      initEdit: initEdit == freezed
          ? _value.initEdit
          : initEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JUserDto implements _JUserDto {
  _$_JUserDto(
      {required this.uid,
      required this.name,
      this.gender,
      this.dob,
      this.age,
      this.height,
      this.weight,
      required this.email,
      this.phone,
      this.city,
      this.avatar,
      @GeoConverter() this.location,
      this.bloodGroup,
      this.userType,
      this.eligible,
      this.formComplete,
      this.initEdit});

  factory _$_JUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_JUserDtoFromJson(json);

  @override
  final String uid;
  @override
  final String? name;
  @override
  final Gender? gender;
  @override
  final DateTime? dob;
  @override
  final num? age;
  @override
  final num? height;
  @override
  final num? weight;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? city;
  @override
  final String? avatar;
  @override
  @GeoConverter()
  final GeoPoint? location;
  @override
  final BloodGroup? bloodGroup;
  @override
  final UserType? userType;
  @override
  final bool? eligible;
  @override
  final bool? formComplete;
  @override
  final bool? initEdit;

  @override
  String toString() {
    return 'JUserDto(uid: $uid, name: $name, gender: $gender, dob: $dob, age: $age, height: $height, weight: $weight, email: $email, phone: $phone, city: $city, avatar: $avatar, location: $location, bloodGroup: $bloodGroup, userType: $userType, eligible: $eligible, formComplete: $formComplete, initEdit: $initEdit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JUserDto &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.eligible, eligible) &&
            const DeepCollectionEquality()
                .equals(other.formComplete, formComplete) &&
            const DeepCollectionEquality().equals(other.initEdit, initEdit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(bloodGroup),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(eligible),
      const DeepCollectionEquality().hash(formComplete),
      const DeepCollectionEquality().hash(initEdit));

  @JsonKey(ignore: true)
  @override
  _$$_JUserDtoCopyWith<_$_JUserDto> get copyWith =>
      __$$_JUserDtoCopyWithImpl<_$_JUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JUserDtoToJson(this);
  }
}

abstract class _JUserDto implements JUserDto {
  factory _JUserDto(
      {required final String uid,
      required final String? name,
      final Gender? gender,
      final DateTime? dob,
      final num? age,
      final num? height,
      final num? weight,
      required final String? email,
      final String? phone,
      final String? city,
      final String? avatar,
      @GeoConverter() final GeoPoint? location,
      final BloodGroup? bloodGroup,
      final UserType? userType,
      final bool? eligible,
      final bool? formComplete,
      final bool? initEdit}) = _$_JUserDto;

  factory _JUserDto.fromJson(Map<String, dynamic> json) = _$_JUserDto.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  Gender? get gender => throw _privateConstructorUsedError;
  @override
  DateTime? get dob => throw _privateConstructorUsedError;
  @override
  num? get age => throw _privateConstructorUsedError;
  @override
  num? get height => throw _privateConstructorUsedError;
  @override
  num? get weight => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get avatar => throw _privateConstructorUsedError;
  @override
  @GeoConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  @override
  BloodGroup? get bloodGroup => throw _privateConstructorUsedError;
  @override
  UserType? get userType => throw _privateConstructorUsedError;
  @override
  bool? get eligible => throw _privateConstructorUsedError;
  @override
  bool? get formComplete => throw _privateConstructorUsedError;
  @override
  bool? get initEdit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JUserDtoCopyWith<_$_JUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
