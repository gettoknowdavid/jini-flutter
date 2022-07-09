import 'package:flutter/material.dart';
import 'package:jini/domain/settings/j_settings.dart';

abstract class ISettingsFacade {
  ThemeMode updateTheme(Brightness brightness);

  void saveSettings(JSettings settings);
  void updateSettings(JSettings updatedSettings);
  JSettings getSettings();
}
