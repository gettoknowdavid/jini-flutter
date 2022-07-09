import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/settings/i_settings_facade.dart';
import 'package:jini/domain/settings/j_settings.dart';
import 'package:jini/infrastructure/settings/j_settings_dtos.dart';
import 'package:jini/infrastructure/settings/settings_mapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ISettingsFacade)
class SettingsFacade implements ISettingsFacade {
  SettingsFacade(this._preferences, this._mapper);
  final SharedPreferences _preferences;
  final SettingsMapper _mapper;

  @override
  ThemeMode updateTheme(Brightness brightness) {
    switch (brightness) {
      case Brightness.light:
        return ThemeMode.dark;
      case Brightness.dark:
        return ThemeMode.light;
      default:
        return ThemeMode.light;
    }
  }

  @override
  JSettings getSettings() {
    final value = _preferences.getString('J_SETTINGS');
    if (value != null) {
      final jsonObject = json.decode(value);
      final jSettingsDto = JSettingsDto.fromJson(jsonObject);
      final jSettings = _mapper.toDomain(jSettingsDto)!;
      return jSettings;
    } else {
      return JSettings(uid: Uid(), themeMode: ThemeMode.light);
    }
  }

  @override
  void saveSettings(JSettings settings) {
    final jSettingsDto = JSettingsDto.fromDomain(settings);
    final jsonString = json.encode(jSettingsDto.toJson());

    _preferences.setString('J_SETTINGS', jsonString);
  }

  @override
  void updateSettings(JSettings updatedSettings) {
    final jsonString = json.encode(updatedSettings);
    _preferences.setString('J_SETTINGS', jsonString);
  }
}
