// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'j_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JSettings {
  Uid get uid => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JSettingsCopyWith<JSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JSettingsCopyWith<$Res> {
  factory $JSettingsCopyWith(JSettings value, $Res Function(JSettings) then) =
      _$JSettingsCopyWithImpl<$Res>;
  $Res call({Uid uid, ThemeMode themeMode});
}

/// @nodoc
class _$JSettingsCopyWithImpl<$Res> implements $JSettingsCopyWith<$Res> {
  _$JSettingsCopyWithImpl(this._value, this._then);

  final JSettings _value;
  // ignore: unused_field
  final $Res Function(JSettings) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$$_JSettingsCopyWith<$Res> implements $JSettingsCopyWith<$Res> {
  factory _$$_JSettingsCopyWith(
          _$_JSettings value, $Res Function(_$_JSettings) then) =
      __$$_JSettingsCopyWithImpl<$Res>;
  @override
  $Res call({Uid uid, ThemeMode themeMode});
}

/// @nodoc
class __$$_JSettingsCopyWithImpl<$Res> extends _$JSettingsCopyWithImpl<$Res>
    implements _$$_JSettingsCopyWith<$Res> {
  __$$_JSettingsCopyWithImpl(
      _$_JSettings _value, $Res Function(_$_JSettings) _then)
      : super(_value, (v) => _then(v as _$_JSettings));

  @override
  _$_JSettings get _value => super._value as _$_JSettings;

  @override
  $Res call({
    Object? uid = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_$_JSettings(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_JSettings implements _JSettings {
  const _$_JSettings({required this.uid, required this.themeMode});

  @override
  final Uid uid;
  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'JSettings(uid: $uid, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JSettings &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_JSettingsCopyWith<_$_JSettings> get copyWith =>
      __$$_JSettingsCopyWithImpl<_$_JSettings>(this, _$identity);
}

abstract class _JSettings implements JSettings {
  const factory _JSettings(
      {required final Uid uid,
      required final ThemeMode themeMode}) = _$_JSettings;

  @override
  Uid get uid => throw _privateConstructorUsedError;
  @override
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JSettingsCopyWith<_$_JSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
