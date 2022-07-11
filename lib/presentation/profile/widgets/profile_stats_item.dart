import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class ProfileStatItem extends StatelessWidget {
  const ProfileStatItem({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: JScreenUtil.padSymmetric(vertical: 10),
      child: Column(
        children: [
          Txt(
            value,
            style: TxtStyle()
              ..fontSize(JScreenUtil.fontSize(30))
              ..textColor(Colors.white),
          ),
          Txt(
            title,
            style: TxtStyle()
              ..fontSize(JScreenUtil.fontSize(14))
              ..textColor(Colors.white70),
          ),
        ],
      ),
    );
  }
}
