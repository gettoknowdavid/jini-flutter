// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'j_settings_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JSettingsDto _$JSettingsDtoFromJson(Map<String, dynamic> json) {
  return _JSettingsDto.fromJson(json);
}

/// @nodoc
mixin _$JSettingsDto {
  String get uid => throw _privateConstructorUsedError;
  ThemeMode? get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JSettingsDtoCopyWith<JSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JSettingsDtoCopyWith<$Res> {
  factory $JSettingsDtoCopyWith(
          JSettingsDto value, $Res Function(JSettingsDto) then) =
      _$JSettingsDtoCopyWithImpl<$Res>;
  $Res call({String uid, ThemeMode? themeMode});
}

/// @nodoc
class _$JSettingsDtoCopyWithImpl<$Res> implements $JSettingsDtoCopyWith<$Res> {
  _$JSettingsDtoCopyWithImpl(this._value, this._then);

  final JSettingsDto _value;
  // ignore: unused_field
  final $Res Function(JSettingsDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc
abstract class _$$_JSettingsDtoCopyWith<$Res>
    implements $JSettingsDtoCopyWith<$Res> {
  factory _$$_JSettingsDtoCopyWith(
          _$_JSettingsDto value, $Res Function(_$_JSettingsDto) then) =
      __$$_JSettingsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String uid, ThemeMode? themeMode});
}

/// @nodoc
class __$$_JSettingsDtoCopyWithImpl<$Res>
    extends _$JSettingsDtoCopyWithImpl<$Res>
    implements _$$_JSettingsDtoCopyWith<$Res> {
  __$$_JSettingsDtoCopyWithImpl(
      _$_JSettingsDto _value, $Res Function(_$_JSettingsDto) _then)
      : super(_value, (v) => _then(v as _$_JSettingsDto));

  @override
  _$_JSettingsDto get _value => super._value as _$_JSettingsDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_$_JSettingsDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JSettingsDto implements _JSettingsDto {
  _$_JSettingsDto({required this.uid, this.themeMode});

  factory _$_JSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$$_JSettingsDtoFromJson(json);

  @override
  final String uid;
  @override
  final ThemeMode? themeMode;

  @override
  String toString() {
    return 'JSettingsDto(uid: $uid, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JSettingsDto &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_JSettingsDtoCopyWith<_$_JSettingsDto> get copyWith =>
      __$$_JSettingsDtoCopyWithImpl<_$_JSettingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JSettingsDtoToJson(this);
  }
}

abstract class _JSettingsDto implements JSettingsDto {
  factory _JSettingsDto(
      {required final String uid,
      final ThemeMode? themeMode}) = _$_JSettingsDto;

  factory _JSettingsDto.fromJson(Map<String, dynamic> json) =
      _$_JSettingsDto.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  ThemeMode? get themeMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JSettingsDtoCopyWith<_$_JSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
