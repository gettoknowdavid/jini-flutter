import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JScreenUtil {
  JScreenUtil._();

  static final globalPadding = const EdgeInsets.symmetric(
    horizontal: 18,
    vertical: 20,
  ).r;

  static final textFieldPadding = const EdgeInsets.fromLTRB(18, 24, 18, 24).r;

  static final borderRadius = BorderRadius.circular(18).r;

  static final contentRadius = const EdgeInsets.fromLTRB(18, 22, 18, 22).r;

  static vSpace(num height) => ScreenUtil().setVerticalSpacing(height);

  static hSpace(num width) => ScreenUtil().setHorizontalSpacing(width);
}
