// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Request {
  Uid get uid => throw _privateConstructorUsedError;
  Uid get userUid => throw _privateConstructorUsedError;
  IName get userName => throw _privateConstructorUsedError;
  ILocation get userLocation => throw _privateConstructorUsedError;
  IBloodGroup get bloodGroup => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get userAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {Uid uid,
      Uid userUid,
      IName userName,
      ILocation userLocation,
      IBloodGroup bloodGroup,
      DateTime createdAt,
      String? userAvatar});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userUid = freezed,
    Object? userName = freezed,
    Object? userLocation = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
    Object? userAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as Uid,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as IName,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as ILocation,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as IBloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$$_RequestCopyWith(
          _$_Request value, $Res Function(_$_Request) then) =
      __$$_RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uid uid,
      Uid userUid,
      IName userName,
      ILocation userLocation,
      IBloodGroup bloodGroup,
      DateTime createdAt,
      String? userAvatar});
}

/// @nodoc
class __$$_RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$$_RequestCopyWith<$Res> {
  __$$_RequestCopyWithImpl(_$_Request _value, $Res Function(_$_Request) _then)
      : super(_value, (v) => _then(v as _$_Request));

  @override
  _$_Request get _value => super._value as _$_Request;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userUid = freezed,
    Object? userName = freezed,
    Object? userLocation = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
    Object? userAvatar = freezed,
  }) {
    return _then(_$_Request(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as Uid,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as IName,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as ILocation,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as IBloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Request implements _Request {
  const _$_Request(
      {required this.uid,
      required this.userUid,
      required this.userName,
      required this.userLocation,
      required this.bloodGroup,
      required this.createdAt,
      this.userAvatar});

  @override
  final Uid uid;
  @override
  final Uid userUid;
  @override
  final IName userName;
  @override
  final ILocation userLocation;
  @override
  final IBloodGroup bloodGroup;
  @override
  final DateTime createdAt;
  @override
  final String? userAvatar;

  @override
  String toString() {
    return 'Request(uid: $uid, userUid: $userUid, userName: $userName, userLocation: $userLocation, bloodGroup: $bloodGroup, createdAt: $createdAt, userAvatar: $userAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Request &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.userUid, userUid) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation) &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.userAvatar, userAvatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(userUid),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userLocation),
      const DeepCollectionEquality().hash(bloodGroup),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(userAvatar));

  @JsonKey(ignore: true)
  @override
  _$$_RequestCopyWith<_$_Request> get copyWith =>
      __$$_RequestCopyWithImpl<_$_Request>(this, _$identity);
}

abstract class _Request implements Request {
  const factory _Request(
      {required final Uid uid,
      required final Uid userUid,
      required final IName userName,
      required final ILocation userLocation,
      required final IBloodGroup bloodGroup,
      required final DateTime createdAt,
      final String? userAvatar}) = _$_Request;

  @override
  Uid get uid => throw _privateConstructorUsedError;
  @override
  Uid get userUid => throw _privateConstructorUsedError;
  @override
  IName get userName => throw _privateConstructorUsedError;
  @override
  ILocation get userLocation => throw _privateConstructorUsedError;
  @override
  IBloodGroup get bloodGroup => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  String? get userAvatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCopyWith<_$_Request> get copyWith =>
      throw _privateConstructorUsedError;
}
