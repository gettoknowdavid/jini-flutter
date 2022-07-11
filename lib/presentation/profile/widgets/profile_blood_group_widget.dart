import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';

class ProfileBloodGroupWidget extends StatelessWidget {
  const ProfileBloodGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()..padding(horizontal: JScreenUtil.r(18)),
      child: Row(
        children: [
          Parent(
            style: JWidgetStyles.bloodGroupWidgetStyles,
            child: Txt(
              'A+',
              style: TxtStyle()
                ..textColor(Colors.white)
                ..fontSize(JScreenUtil.fontSize(26)),
            ),
          ),
          JScreenUtil.hSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Txt(
                'A Positive',
                style: TxtStyle()..fontSize(JScreenUtil.fontSize(20)),
              ),
              JScreenUtil.vSpace(4),
              Txt(
                'Learn More',
                style: TxtStyle()..fontSize(JScreenUtil.fontSize(12)),
                gesture: Gestures()..onTap(() {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
