import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JTheme {
  JTheme._();

  static final Color _primary = Color(0xFFF25774);
  static final Color _primaryDark = Color(0xFFF25774);
  static final Color _backgroundDark = Color(0xFF090911);
  static final Color _backgroundLight = Color(0xFFECEAEA);
  static final swatch = MaterialColor(0xFFF25774, {
    50: const Color.fromRGBO(250, 99, 147, .1),
    100: const Color.fromRGBO(250, 99, 147, .2),
    200: const Color.fromRGBO(250, 99, 147, .3),
    300: const Color.fromRGBO(250, 99, 147, .4),
    400: const Color.fromRGBO(250, 99, 147, .5),
    500: const Color.fromRGBO(250, 99, 147, .6),
    600: const Color.fromRGBO(250, 99, 147, .7),
    700: const Color.fromRGBO(250, 99, 147, .8),
    800: const Color.fromRGBO(250, 99, 147, .9),
    900: const Color.fromRGBO(250, 99, 147, 1),
  });

  static final _appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  );

  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: GoogleFonts.spaceGrotesk(color: _primary),
    ),
  );

  static final _pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
    },
  );

  static final _drawerTheme = DrawerThemeData(
    elevation: 20,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(18)).r,
    ),
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
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
  );

  static get lightTheme {
    final ThemeData _baseLight = ThemeData.light();

    return _baseLight.copyWith(
      colorScheme: ColorScheme.light().copyWith(
        primary: _primary,
        onPrimary: Colors.white,
        secondary: _primary,
        onSecondary: Colors.white,
        error: swatch.shade900,
        onError: Colors.white,
      ),
      primaryColor: _primary,
      brightness: Brightness.light,
      primaryColorDark: _primaryDark,
      canvasColor: _backgroundLight,
      backgroundColor: _backgroundLight,
      scaffoldBackgroundColor: _backgroundLight,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _backgroundLight,
      ),
      indicatorColor: _primary,
      appBarTheme: _appBarTheme,
      textButtonTheme: _textButtonTheme,
      drawerTheme: _drawerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
    );
  }

  static get darkTheme {
    final ThemeData _baseDark = ThemeData.dark();
    return _baseDark.copyWith(
      colorScheme: ColorScheme.dark().copyWith(
        primary: _primary,
        onPrimary: Colors.white,
        secondary: _primary,
        onSecondary: Colors.white,
        background: _backgroundDark,
        onBackground: Colors.white,
        error: swatch.shade900,
        onError: Colors.white,
        surface: _backgroundLight,
        onSurface: Colors.white,
      ),
      brightness: Brightness.dark,
      primaryColor: _primary,
      primaryColorDark: _primaryDark,
      canvasColor: _backgroundDark,
      backgroundColor: _backgroundDark,
      scaffoldBackgroundColor: _backgroundDark,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _backgroundDark,
      ),
      indicatorColor: _primary,
      appBarTheme: _appBarTheme,
      textButtonTheme: _textButtonTheme,
      drawerTheme: _drawerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
    );
  }
}
