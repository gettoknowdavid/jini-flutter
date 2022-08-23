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
  JUser get user => throw _privateConstructorUsedError;
  IBloodGroup get bloodGroup => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call({Uid uid, JUser user, IBloodGroup bloodGroup, DateTime createdAt});

  $JUserCopyWith<$Res> get user;
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
    Object? user = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as JUser,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as IBloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $JUserCopyWith<$Res> get user {
    return $JUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$$_RequestCopyWith(
          _$_Request value, $Res Function(_$_Request) then) =
      __$$_RequestCopyWithImpl<$Res>;
  @override
  $Res call({Uid uid, JUser user, IBloodGroup bloodGroup, DateTime createdAt});

  @override
  $JUserCopyWith<$Res> get user;
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
    Object? user = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Request(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as JUser,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as IBloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Request implements _Request {
  const _$_Request(
      {required this.uid,
      required this.user,
      required this.bloodGroup,
      required this.createdAt});

  @override
  final Uid uid;
  @override
  final JUser user;
  @override
  final IBloodGroup bloodGroup;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Request(uid: $uid, user: $user, bloodGroup: $bloodGroup, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Request &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(bloodGroup),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_RequestCopyWith<_$_Request> get copyWith =>
      __$$_RequestCopyWithImpl<_$_Request>(this, _$identity);
}

abstract class _Request implements Request {
  const factory _Request(
      {required final Uid uid,
      required final JUser user,
      required final IBloodGroup bloodGroup,
      required final DateTime createdAt}) = _$_Request;

  @override
  Uid get uid => throw _privateConstructorUsedError;
  @override
  JUser get user => throw _privateConstructorUsedError;
  @override
  IBloodGroup get bloodGroup => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCopyWith<_$_Request> get copyWith =>
      throw _privateConstructorUsedError;
}
