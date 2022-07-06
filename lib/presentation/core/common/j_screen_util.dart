import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JScreenUtil {
  JScreenUtil._();

  static final GLOBAL_PADDING = const EdgeInsets.symmetric(
    horizontal: 18,
    vertical: 20,
  ).r;

  static final TEXTFIELD_PADDING = const EdgeInsets.all(18).r;

  static final BORDER_RADIUS = BorderRadius.circular(18).r;

  static final CONTENT_PADDING = const EdgeInsets.fromLTRB(18, 22, 18, 22).r;

  static vSpace(num height) => ScreenUtil().setVerticalSpacing(height);

  static hSpace(num width) => ScreenUtil().setHorizontalSpacing(width);
}
