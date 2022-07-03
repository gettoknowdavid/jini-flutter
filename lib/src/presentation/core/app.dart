import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/presentation/auth/sign_in/sign_in_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/presentation/auth/sign_up/sign_up_page.dart';
import 'package:jini/src/presentation/auth/verification/verification_page.dart';
import 'package:jini/src/presentation/core/layout/j_layout.dart';
import 'package:jini/src/presentation/donor_requirements/donor_requirements_page.dart';
import 'package:jini/src/presentation/profile/profile_page.dart';
import 'package:jini/src/presentation/routes/j_router.dart';
import 'package:jini/src/presentation/splash/splash_page.dart';

class JiniApp extends StatelessWidget {
  const JiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.dark();

    return ScreenUtilInit(
      designSize: const Size(393, 830),
      minTextAdapt: true,
      child: const SplashPage(),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Jini Donation',
          defaultTransition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 350),
          home: SplashPage(),
          getPages: [
            GetPage(name: JRoutes.splash, page: () => SplashPage()),
            GetPage(name: JRoutes.layout, page: () => JLayout()),
            GetPage(name: JRoutes.signIn, page: () => SignInPage()),
            GetPage(name: JRoutes.signUp, page: () => SignUpPage()),
            GetPage(name: JRoutes.verification, page: () => VerificationPage()),
            GetPage(name: JRoutes.profile, page: () => ProfilePage()),
            GetPage(
              name: JRoutes.donorRequirements,
              page: () => DonorRequirementsPage(),
            ),
          ],
          theme: ThemeData(
            primarySwatch: AppColors.swatch,
            primaryColor: AppColors.primary,
            canvasColor: AppColors.background,
            backgroundColor: AppColors.background,
            scaffoldBackgroundColor: AppColors.background,
            brightness: Brightness.dark,
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: AppColors.background,
            ),
            pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
                TargetPlatform.android: ZoomPageTransitionsBuilder(),
              },
            ),
            textTheme: theme.textTheme
                .copyWith()
                .apply(fontFamily: GoogleFonts.spaceGrotesk().fontFamily),
          ),
        );
      },
    );
  }
}
