import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jini/common/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JBackButton extends StatelessWidget {
  const JBackButton({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(PhosphorIcons.arrowBendUpLeftBold),
      color: color ?? AppColors.primary,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: () => Get.back(),
    );
  }
}
