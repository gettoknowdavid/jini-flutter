import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class JAvatar extends StatelessWidget {
  const JAvatar({
    Key? key,
    this.radius = 0.35,
    this.showBadge = false,
    this.user,
  }) : super(key: key);
  final num radius;
  final bool showBadge;
  final JUser? user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Parent(
          style: ParentStyle()
            ..height(JScreenUtil.sw(radius))
            ..width(JScreenUtil.sw(radius))
            ..borderRadius(all: JScreenUtil.radius(radius * 110))
            ..elevation(14, opacity: 0.4)
            ..alignmentContent.center()
            ..background.color(theme.primaryColor),
          child: user != null && user!.avatar != null
              ? Image.network(user!.avatar!)
              : Txt(
                  'DM',
                  style: TxtStyle()
                    ..textColor(Colors.white)
                    ..fontSize(JScreenUtil.fontSize(36))
                    ..textAlign.center(),
                ),
        ),
        !showBadge || user == null
            ? const SizedBox()
            : Positioned(
                bottom: JScreenUtil.w(-5),
                right: JScreenUtil.w(-10),
                child: Parent(
                  style: ParentStyle()
                    ..borderRadius(all: JScreenUtil.radius(8))
                    ..elevation(14, opacity: 0.4)
                    ..background.color(Colors.blue)
                    ..alignmentContent.center()
                    ..padding(
                      horizontal: JScreenUtil.radius(12),
                      vertical: JScreenUtil.radius(4),
                    ),
                  child: Txt(
                    user!.userType!.getOrCrash().toString().toUpperCase(),
                    style: TxtStyle()
                      ..textColor(Colors.white)
                      ..letterSpacing(JScreenUtil.fontSize(1))
                      ..fontWeight(FontWeight.w500)
                      ..fontSize(JScreenUtil.fontSize(12)),
                  ),
                ),
              ),
      ],
    );
  }
}
