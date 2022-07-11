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
    final textTheme = theme.textTheme;

    return ListTile(
      contentPadding: JScreenUtil.padFromLTRB(18, 4, 18, 4),
      leading: Icon(
        icon,
        color: theme.primaryColor,
      ),
      minLeadingWidth: JScreenUtil.w(20),
      title: Text(title, style: textTheme.bodySmall),
      subtitle: Text(value, style: textTheme.titleMedium),
    );
  }
}
