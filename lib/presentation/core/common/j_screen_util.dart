import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JScreenUtil {
  JScreenUtil._();

  static final divider = Divider(height: 1.r, indent: 18.r, endIndent: 18.r);

  static final globalPadding = const EdgeInsets.symmetric(
    horizontal: 18,
    vertical: 20,
  ).r;

  static final drawerPadding = const EdgeInsets.all(18).r;

  static final textFieldPadding = const EdgeInsets.fromLTRB(18, 24, 18, 24).r;

  static final borderRadius = BorderRadius.circular(18).r;

  static final contentRadius = const EdgeInsets.fromLTRB(18, 22, 18, 22).r;

  static fontSize(num value) => value.r;

  static radius(num value) => value.r;

  static r(num value) => value.r;

  static vSpace(num height) => ScreenUtil().setVerticalSpacing(height);

  static hSpace(num width) => ScreenUtil().setHorizontalSpacing(width);

  static h(num height) => ScreenUtil().setHeight(height);

  static w(num width) => ScreenUtil().setWidth(width);

  static sh(num value) => ScreenUtil().screenHeight * value;

  static sw(num value) => ScreenUtil().screenWidth * value;

  static padAll(double value) => EdgeInsets.all(value).r;

  static padFromLTRB(double left, double top, double right, double bottom) =>
      EdgeInsets.fromLTRB(left, top, right, bottom).r;

  static padSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical).r;

  static padOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      EdgeInsets.only(left: left, top: top, right: right, bottom: bottom).r;
}
