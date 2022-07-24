import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as flutter_bloc;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/settings/settings_bloc.dart';
import 'package:jini/presentation/core/common/j_theme.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/splash/splash_page.dart';

class JiniApp extends StatelessWidget {
  const JiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 830),
      minTextAdapt: true,
      child: const SplashPage(),
      builder: (context, child) {
        return flutter_bloc.BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return MaterialApp(
              theme: JTheme.lightTheme,
              darkTheme: JTheme.darkTheme,
              themeMode: state.settings.themeMode,
              color: Theme.of(context).primaryColor,
              onGenerateTitle: (context) => 'Jini',
              onGenerateRoute: JRouter.generateRoute,
              onGenerateInitialRoutes: JRouter.generateInitialRoutes,
            );
          },
        );
      },
    );
  }
}
