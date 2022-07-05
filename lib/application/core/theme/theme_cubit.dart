import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void updateTheme(Brightness brightness) {
    // final _b = WidgetsBinding.instance.platformDispatcher.platformBrightness;

    switch (brightness) {
      case Brightness.light:
        _setTheme(ThemeMode.dark);
        break;
      case Brightness.dark:
        _setTheme(ThemeMode.light);
        break;
      default:
        _setTheme(ThemeMode.light);
    }
  }

  void _setTheme(ThemeMode mode) => emit(mode);
}
