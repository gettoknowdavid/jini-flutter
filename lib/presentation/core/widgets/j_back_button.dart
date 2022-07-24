import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JBackButton extends StatelessWidget {
  const JBackButton({Key? key, this.color, this.onTap}) : super(key: key);

  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(PhosphorIcons.arrowBendUpLeftBold),
      color: color ?? Theme.of(context).primaryColor,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: onTap ?? () => Navigator.pop(context),
    );
  }
}
