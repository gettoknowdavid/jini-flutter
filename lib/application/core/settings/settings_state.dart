part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({required JSettings settings}) = _SettingsState;

  factory SettingsState.initial() => SettingsState(
        settings: JSettings(
          uid: Uid(),
          themeMode: ThemeMode.light,
        ),
      );
}
