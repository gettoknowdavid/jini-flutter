import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JBackButton extends StatelessWidget {
  const JBackButton({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(PhosphorIcons.arrowBendUpLeftBold),
      color: color ?? Theme.of(context).primaryColor,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: () => Get.back(),
    );
  }
}
