import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JTheme {
  JTheme._();

  static final Color _white = Color(0xFFFFFFFF);
  static final Color _black = Color(0xFF000000);
  static final Color _primary = Color(0xFFF25774);
  static final Color _primaryDark = Color(0xFFF25774);
  static final Color _backgroundDark = Color(0xFF090911);
  static final Color _backgroundLight = Color(0xFFECEAEA);

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
      shadowColor: _primary.withOpacity(0.7),
      primary: _primary,
      padding: EdgeInsets.all(20).r,
      textStyle: GoogleFonts.spaceGrotesk(
        color: _white,
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
        onPrimary: _white,
        secondary: _primary,
        onSecondary: _white,
        background: _backgroundLight,
        surface: _backgroundLight,
      ),
      primaryColor: _primary,
      brightness: Brightness.light,
      primaryColorDark: _primaryDark,
      canvasColor: _backgroundLight,
      backgroundColor: _backgroundLight,
      scaffoldBackgroundColor: _backgroundLight,
      indicatorColor: _primary,
      appBarTheme: _appBarTheme,
      textButtonTheme: _textButtonTheme,
      drawerTheme: _drawerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _backgroundLight,
      ),
      textTheme: _baseLight.textTheme
          .copyWith(
            headlineLarge: _baseLight.textTheme.displaySmall?.copyWith(
              color: _black,
              fontWeight: FontWeight.w600,
              height: 1.2.sp,
            ),
            titleMedium: _baseLight.textTheme.displaySmall?.copyWith(
              color: Colors.black87,
              letterSpacing: -0.5.sp,
            ),
            titleSmall: _baseLight.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          )
          .apply(fontFamily: GoogleFonts.spaceGrotesk().fontFamily),
    );
  }

  static get darkTheme {
    final ThemeData _baseDark = ThemeData.dark();
    return _baseDark.copyWith(
      colorScheme: ColorScheme.dark().copyWith(
        primary: _primary,
        onPrimary: _white,
        secondary: _primary,
        onSecondary: _white,
        background: _backgroundDark,
        surface: _backgroundLight,
      ),
      brightness: Brightness.dark,
      primaryColor: _primary,
      primaryColorDark: _primaryDark,
      canvasColor: _backgroundDark,
      backgroundColor: _backgroundDark,
      scaffoldBackgroundColor: _backgroundDark,
      indicatorColor: _primary,
      appBarTheme: _appBarTheme,
      textButtonTheme: _textButtonTheme,
      drawerTheme: _drawerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _backgroundDark,
      ),
      textTheme: _baseDark.textTheme
          .copyWith(
            headlineLarge: _baseDark.textTheme.displaySmall?.copyWith(
              color: _white,
              fontWeight: FontWeight.w600,
              height: 1.2.sp,
            ),
            titleMedium: _baseDark.textTheme.displaySmall?.copyWith(
              color: Colors.white70,
              letterSpacing: -0.5.sp,
            ),
            titleSmall: _baseDark.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          )
          .apply(fontFamily: GoogleFonts.spaceGrotesk().fontFamily),
    );
  }
}
