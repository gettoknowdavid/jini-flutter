import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as flutter_bloc;
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/theme/theme_cubit.dart';
import 'package:jini/presentation/core/common/j_theme.dart';
import 'package:jini/presentation/routes/j_router.dart';
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
        return flutter_bloc.BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, state) {
            return GetMaterialApp(
              title: 'Jini Donation',
              defaultTransition: Transition.fadeIn,
              transitionDuration: const Duration(milliseconds: 350),
              home: SplashPage(),
              getPages: JRoutes.pages,
              theme: JTheme.lightTheme,
              darkTheme: JTheme.darkTheme,
              themeMode: state,
              color: Theme.of(context).primaryColor,
            );
          },
        );
      },
    );
  }
}
