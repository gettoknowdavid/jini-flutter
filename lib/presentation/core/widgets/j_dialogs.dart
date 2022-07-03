import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JDialogs {
  JDialogs._();

  static noMailAppDialog() {
    return Get.defaultDialog(
      title: 'Oops!',
      middleText: 'No mail apps installed',
      textConfirm: 'OK',
      onConfirm: () => Get.back(),
      confirmTextColor: Colors.white,
      barrierDismissible: true,
    );
  }

  static mailAppOptionsDialog(Widget? content) {
    return Get.defaultDialog(
      title: 'Open Mail App',
      middleText: 'Please select your preferred mail application',
      textConfirm: 'Cancel',
      onConfirm: () => Get.back(),
      confirmTextColor: Colors.white,
      barrierDismissible: true,
      content: content,
    );
  }
}
