import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class JWidgetStyles {
  JWidgetStyles._();

  static final headerStyles = ParentStyle()
    ..width(JScreenUtil.sw(1))
    ..elevation(20, opacity: 0.7)
    ..borderRadius(
      bottomLeft: JScreenUtil.r(34),
      bottomRight: JScreenUtil.r(34),
    )
    ..linearGradient(
      colors: [Color(0xFFF25774), Color(0xFFD1324F)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    )
    ..padding(
      horizontal: JScreenUtil.radius(18),
      top: JScreenUtil.radius(70),
      bottom: JScreenUtil.radius(30),
    );

  static final bloodGroupWidgetStyles = ParentStyle()
    ..height(JScreenUtil.w(60))
    ..width(JScreenUtil.w(60))
    ..borderRadius(all: JScreenUtil.r(12))
    ..alignmentContent.center()
    ..elevation(12, color: Color(0xFFF25774))
    ..linearGradient(
      colors: [Color(0xFFF25774), Color(0xFFD1324F)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

  static final unselectedBloodGroupStyles = ParentStyle()
    ..height(JScreenUtil.w(60))
    ..width(JScreenUtil.w(60))
    ..borderRadius(all: JScreenUtil.r(12))
    ..alignmentContent.center();
}
