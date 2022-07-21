// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'j_settings_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$JSettingsDtoToJson(JSettingsDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

_$_JSettingsDto _$$_JSettingsDtoFromJson(Map<String, dynamic> json) =>
    _$_JSettingsDto(
      uid: json['uid'] as String,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$$_JSettingsDtoToJson(_$_JSettingsDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
    };
