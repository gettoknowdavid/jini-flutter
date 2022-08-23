// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDto _$RequestDtoFromJson(Map<String, dynamic> json) {
  return _RequestDto.fromJson(json);
}

/// @nodoc
mixin _$RequestDto {
  String get uid => throw _privateConstructorUsedError;
  String get userUid => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  @GeoConverter()
  GeoPoint get userLocation => throw _privateConstructorUsedError;
  String? get userAvatar => throw _privateConstructorUsedError;
  BloodGroup get bloodGroup => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDtoCopyWith<RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDtoCopyWith<$Res> {
  factory $RequestDtoCopyWith(
          RequestDto value, $Res Function(RequestDto) then) =
      _$RequestDtoCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String userUid,
      String userName,
      @GeoConverter() GeoPoint userLocation,
      String? userAvatar,
      BloodGroup bloodGroup,
      DateTime createdAt});
}

/// @nodoc
class _$RequestDtoCopyWithImpl<$Res> implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._value, this._then);

  final RequestDto _value;
  // ignore: unused_field
  final $Res Function(RequestDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userUid = freezed,
    Object? userName = freezed,
    Object? userLocation = freezed,
    Object? userAvatar = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as BloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestDtoCopyWith<$Res>
    implements $RequestDtoCopyWith<$Res> {
  factory _$$_RequestDtoCopyWith(
          _$_RequestDto value, $Res Function(_$_RequestDto) then) =
      __$$_RequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String userUid,
      String userName,
      @GeoConverter() GeoPoint userLocation,
      String? userAvatar,
      BloodGroup bloodGroup,
      DateTime createdAt});
}

/// @nodoc
class __$$_RequestDtoCopyWithImpl<$Res> extends _$RequestDtoCopyWithImpl<$Res>
    implements _$$_RequestDtoCopyWith<$Res> {
  __$$_RequestDtoCopyWithImpl(
      _$_RequestDto _value, $Res Function(_$_RequestDto) _then)
      : super(_value, (v) => _then(v as _$_RequestDto));

  @override
  _$_RequestDto get _value => super._value as _$_RequestDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userUid = freezed,
    Object? userName = freezed,
    Object? userLocation = freezed,
    Object? userAvatar = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_RequestDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as BloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDto implements _RequestDto {
  _$_RequestDto(
      {required this.uid,
      required this.userUid,
      required this.userName,
      @GeoConverter() required this.userLocation,
      this.userAvatar,
      required this.bloodGroup,
      required this.createdAt});

  factory _$_RequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_RequestDtoFromJson(json);

  @override
  final String uid;
  @override
  final String userUid;
  @override
  final String userName;
  @override
  @GeoConverter()
  final GeoPoint userLocation;
  @override
  final String? userAvatar;
  @override
  final BloodGroup bloodGroup;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'RequestDto(uid: $uid, userUid: $userUid, userName: $userName, userLocation: $userLocation, userAvatar: $userAvatar, bloodGroup: $bloodGroup, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDto &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.userUid, userUid) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation) &&
            const DeepCollectionEquality()
                .equals(other.userAvatar, userAvatar) &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(userUid),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userLocation),
      const DeepCollectionEquality().hash(userAvatar),
      const DeepCollectionEquality().hash(bloodGroup),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_RequestDtoCopyWith<_$_RequestDto> get copyWith =>
      __$$_RequestDtoCopyWithImpl<_$_RequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestDtoToJson(this);
  }
}

abstract class _RequestDto implements RequestDto {
  factory _RequestDto(
      {required final String uid,
      required final String userUid,
      required final String userName,
      @GeoConverter() required final GeoPoint userLocation,
      final String? userAvatar,
      required final BloodGroup bloodGroup,
      required final DateTime createdAt}) = _$_RequestDto;

  factory _RequestDto.fromJson(Map<String, dynamic> json) =
      _$_RequestDto.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get userUid => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @GeoConverter()
  GeoPoint get userLocation => throw _privateConstructorUsedError;
  @override
  String? get userAvatar => throw _privateConstructorUsedError;
  @override
  BloodGroup get bloodGroup => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RequestDtoCopyWith<_$_RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
