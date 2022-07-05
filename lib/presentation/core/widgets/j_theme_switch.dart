import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/core/theme/theme_cubit.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JThemeSwitch extends StatelessWidget {
  const JThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      bloc: BlocProvider.of<ThemeCubit>(context),
      builder: (context, state) {
        final Brightness _b = Theme.of(context).brightness;
        final isDark = state == ThemeMode.dark ? true : false;

        return IconButton(
          onPressed: () => context.read<ThemeCubit>().updateTheme(_b),
          icon: Icon(
            isDark ? PhosphorIcons.sunBold : PhosphorIcons.moonBold,
            color: isDark ? Colors.white : Colors.black,
          ),
        );
      },
    );
  }
}
