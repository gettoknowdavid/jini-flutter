import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/settings/j_settings.dart';
import 'package:jini/infrastructure/settings/j_settings_dtos.dart';

@lazySingleton
class SettingsMapper {
  JSettings? toDomain(JSettingsDto? settings) {
    if (settings == null) {
      return null;
    }

    return JSettings(
      uid: Uid.fromUniqueString(settings.uid),
      themeMode: settings.themeMode ?? ThemeMode.light,
    );
  }
}
