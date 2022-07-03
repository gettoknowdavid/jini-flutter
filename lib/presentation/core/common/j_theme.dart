import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JTheme {
  JTheme._();

  static final Color _primary = Color(0xFFF25774);
  static final Color _primaryDark = Color(0xFFF25774);
  static final Color _secondary = Color(0xFF1723FD);
  // static final Color _secondaryDark = Color(0xFF1D1340);
  static final Color _background = Color(0xFF090911);
  static const swatch = MaterialColor(0xFFF25774, {
    50: Color.fromRGBO(250, 99, 147, .1),
    100: Color.fromRGBO(250, 99, 147, .2),
    200: Color.fromRGBO(250, 99, 147, .3),
    300: Color.fromRGBO(250, 99, 147, .4),
    400: Color.fromRGBO(250, 99, 147, .5),
    500: Color.fromRGBO(250, 99, 147, .6),
    600: Color.fromRGBO(250, 99, 147, .7),
    700: Color.fromRGBO(250, 99, 147, .8),
    800: Color.fromRGBO(250, 99, 147, .9),
    900: Color.fromRGBO(250, 99, 147, 1),
  });

  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.dark().copyWith(
      primary: _primary,
      onPrimary: Colors.white,
      secondary: _primary,
      onSecondary: Colors.white,
      background: _background,
      onBackground: Colors.white,
      error: swatch.shade900,
      onError: Colors.white,
      surface: _background,
      onSurface: Colors.white,
      brightness: Brightness.dark,
    ),
    primarySwatch: swatch,
    primaryColor: _primary,
    primaryColorDark: _primaryDark,
    canvasColor: _background,
    backgroundColor: _background,
    scaffoldBackgroundColor: _background,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: _background,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.spaceGrotesk(color: _primary),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 16,
        shadowColor: swatch.shade700,
        primary: _primary,
        padding: EdgeInsets.all(20).r,
        textStyle: GoogleFonts.spaceGrotesk(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.r),
        ),
      ),
    ),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
  );
}
