import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/presentation/core/common/app_colors.dart';

class JTheme {
  JTheme._();

  static final ThemeData theme = ThemeData(
    primarySwatch: AppColors.swatch,
    primaryColor: AppColors.primary,
    canvasColor: AppColors.background,
    backgroundColor: AppColors.background,
    scaffoldBackgroundColor: AppColors.background,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.background,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
  );
}
