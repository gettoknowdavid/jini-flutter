import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JSnackbars {
  JSnackbars._();

  static errorSnackbar({required String title, required String message}) {
    return Get.snackbar(
      title,
      message,
      icon: Icon(PhosphorIcons.warningCircleBold),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 5),
    );
  }
}
