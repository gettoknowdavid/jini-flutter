import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JSnackbars {
  JSnackbars._();

  static get closeAll => {Get.closeCurrentSnackbar(), Get.closeAllSnackbars()};

  static errorSnackbar({required String title, required String message}) {
    return Get.snackbar(
      title,
      message,
      icon: Icon(PhosphorIcons.warningCircleBold, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(18).r,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }
}
