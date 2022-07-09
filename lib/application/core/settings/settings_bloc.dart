import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/settings/i_settings_facade.dart';
import 'package:jini/domain/settings/j_settings.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsFacade _facade;

  SettingsBloc(this._facade)
      : super(SettingsState(settings: _facade.getSettings())) {
    on<ThemeChanged>((event, emit) => _themeChanged(event, emit));
  }

  _themeChanged(ThemeChanged e, Emitter<SettingsState> emit) async {
    final themeMode = _facade.updateTheme(e.brightness);
    final _settings = JSettings(uid: Uid(), themeMode: themeMode);
    emit(state.copyWith(settings: _settings));
    _facade.saveSettings(_settings);
  }
}
