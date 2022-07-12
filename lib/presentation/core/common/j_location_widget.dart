import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JLocationWidget extends StatelessWidget {
  const JLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      gesture: Gestures()..onTap(() {}),
      style: ParentStyle()
        ..padding(vertical: JScreenUtil.r(6))
        ..ripple(true),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            PhosphorIcons.navigationArrow,
            color: Colors.white,
            size: JScreenUtil.fontSize(18),
          ),
          JScreenUtil.hSpace(6),
          Txt(
            'Port Harcourt, Nigeria',
            style: TxtStyle()
              ..textColor(Colors.white70)
              ..fontSize(JScreenUtil.fontSize(16)),
          ),
        ],
      ),
    );
  }
}
