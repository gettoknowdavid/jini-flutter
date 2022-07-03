import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/domain/mail/i_mail_facade.dart';
import 'package:open_mail_app/open_mail_app.dart';

@LazySingleton(as: IMailFacade)
class OpenMailAppFacade implements IMailFacade {
  @override
  Future<void> openMailApp() async {
    final _result = await OpenMailApp.openMailApp();

    if (!_result.didOpen && !_result.canOpen) {
      Get.defaultDialog(
        title: 'Oops!',
        middleText: 'No mail apps installed',
        textConfirm: 'OK',
        onConfirm: () => Get.back(),
        confirmTextColor: Colors.white,
        buttonColor: AppColors.primary,
        barrierDismissible: true,
      );
    } else if (!_result.didOpen && _result.canOpen) {
      Get.defaultDialog(
        title: 'Open Mail App',
        middleText: 'Please select your preferred mail application',
        textConfirm: 'Cancel',
        onConfirm: () => Get.back(),
        confirmTextColor: Colors.white,
        buttonColor: AppColors.primary,
        barrierDismissible: true,
        content: MailAppPickerDialog(mailApps: _result.options),
      );
    }
  }
}
