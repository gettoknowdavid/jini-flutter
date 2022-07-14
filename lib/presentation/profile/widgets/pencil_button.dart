import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PencilButton extends StatelessWidget {
  const PencilButton({
    Key? key,
    this.size,
    required this.onTap,
    this.circle = false,
    this.color,
  }) : super(key: key);

  final double? size;
  final void Function() onTap;
  final bool circle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final circleStyle = ParentStyle()
      ..circle()
      ..height(JScreenUtil.w(30))
      ..width(JScreenUtil.w(30))
      ..background.color(theme.primaryColor)
      ..alignmentContent.center()
      ..ripple(true);

    final normalStyle = ParentStyle()..margin(left: JScreenUtil.r(10));

    return Parent(
      style: circle ? circleStyle : normalStyle,
      gesture: Gestures()..onTap(onTap),
      child: Icon(
        PhosphorIcons.pencil,
        size: JScreenUtil.fontSize(size ?? 20),
        color: color ?? theme.iconTheme.color,
      ),
    );
  }
}
