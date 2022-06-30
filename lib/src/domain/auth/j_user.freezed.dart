// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'j_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JUser {
  String get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JUserCopyWith<JUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JUserCopyWith<$Res> {
  factory $JUserCopyWith(JUser value, $Res Function(JUser) then) =
      _$JUserCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$JUserCopyWithImpl<$Res> implements $JUserCopyWith<$Res> {
  _$JUserCopyWithImpl(this._value, this._then);

  final JUser _value;
  // ignore: unused_field
  final $Res Function(JUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JUserCopyWith<$Res> implements $JUserCopyWith<$Res> {
  factory _$$_JUserCopyWith(_$_JUser value, $Res Function(_$_JUser) then) =
      __$$_JUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$$_JUserCopyWithImpl<$Res> extends _$JUserCopyWithImpl<$Res>
    implements _$$_JUserCopyWith<$Res> {
  __$$_JUserCopyWithImpl(_$_JUser _value, $Res Function(_$_JUser) _then)
      : super(_value, (v) => _then(v as _$_JUser));

  @override
  _$_JUser get _value => super._value as _$_JUser;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_JUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JUser implements _JUser {
  _$_JUser({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'JUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JUser &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_JUserCopyWith<_$_JUser> get copyWith =>
      __$$_JUserCopyWithImpl<_$_JUser>(this, _$identity);
}

abstract class _JUser implements JUser {
  factory _JUser({required final String uid}) = _$_JUser;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JUserCopyWith<_$_JUser> get copyWith =>
      throw _privateConstructorUsedError;
}
