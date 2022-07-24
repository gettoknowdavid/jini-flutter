import 'package:flutter/material.dart';
import 'package:jini/presentation/core/routes/j_router.dart';

class JSnackbars {
  JSnackbars._();

  static get closeAll {
    ScaffoldMessenger.of(JRouter.key.currentContext!).removeCurrentSnackBar();
    ScaffoldMessenger.of(JRouter.key.currentContext!).clearSnackBars();
  }

  static errorSnackbar({required String title, required String message}) {
    return ScaffoldMessenger.of(JRouter.key.currentContext!).showSnackBar(
      SnackBar(
        content: Container(),
      ),
    );
    // return Get.snackbar(
    //   title,
    //   message,
    //   icon: Icon(PhosphorIcons.warningCircleBold, color: Colors.white),
    //   snackPosition: SnackPosition.BOTTOM,
    //   margin: EdgeInsets.all(18).r,
    //   backgroundColor: Colors.red,
    //   colorText: Colors.white,
    //   duration: const Duration(seconds: 5),
    // );
  }
}
