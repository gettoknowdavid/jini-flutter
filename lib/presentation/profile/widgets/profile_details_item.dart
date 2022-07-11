import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class ProfileDetailsItem extends StatelessWidget {
  const ProfileDetailsItem({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Parent(
      style: ParentStyle()..padding(all: JScreenUtil.r(18)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: theme.primaryColor),
          JScreenUtil.hSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Txt(title, style: TxtStyle()..fontSize(12)),
              JScreenUtil.vSpace(4),
              Txt(value, style: TxtStyle()..fontSize(16)),
            ],
          ),
        ],
      ),
    );
  }
}
