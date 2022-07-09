import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/core/settings/settings_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JThemeSwitch extends StatelessWidget {
  const JThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SettingsBloc>(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
      bloc: bloc,
      builder: (context, state) {
        final Brightness _b = Theme.of(context).brightness;
        final ThemeMode _mode = state.settings.themeMode;
        final isDark = _mode == ThemeMode.dark ? true : false;

        return IconButton(
          onPressed: () => bloc.add(ThemeChanged(_b)),
          icon: Icon(
            isDark ? PhosphorIcons.sunBold : PhosphorIcons.moonBold,
            color: isDark ? Colors.white : Colors.black,
          ),
        );
      },
    );
  }
}
