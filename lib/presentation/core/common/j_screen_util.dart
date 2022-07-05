import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JScreenUtil {
  JScreenUtil._();

  static final GLOBAL_PADDING = const EdgeInsets.symmetric(horizontal: 18).r;

  static vSpace(num height) => ScreenUtil().setVerticalSpacing(height);

  static hSpace(num width) => ScreenUtil().setHorizontalSpacing(width);
}
