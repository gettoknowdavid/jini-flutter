import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/settings/j_settings.dart';

part 'j_settings_dtos.freezed.dart';
part 'j_settings_dtos.g.dart';

@freezed
@JsonSerializable(explicitToJson: true, createFactory: false)
class JSettingsDto with _$JSettingsDto {
  factory JSettingsDto({
    required String uid,
    ThemeMode? themeMode,
  }) = _JSettingsDto;

  factory JSettingsDto.fromDomain(JSettings jSettings) {
    return JSettingsDto(
      uid: jSettings.uid.getOrCrash()!,
      themeMode: jSettings.themeMode,
    );
  }

  factory JSettingsDto.fromJson(Map<String, Object?> json) =>
      _$JSettingsDtoFromJson(json);

  Map<String, Object?> toJson() => _$JSettingsDtoToJson(this);
}
