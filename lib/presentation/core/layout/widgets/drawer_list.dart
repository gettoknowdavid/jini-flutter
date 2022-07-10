import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


class DrawerItem {
  DrawerItem(this.icon, this.title, this.route);

  final IconData icon;
  final String title;
  final String route;
}

final List<DrawerItem> drawerItems = <DrawerItem>[
  DrawerItem(PhosphorIcons.magnifyingGlass, 'Find a Donor', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.drop, 'Blood Requests', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.firstAid, 'Donation Centers', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.clock, 'My Appointments', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.question, 'FAQs', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.lifebuoy, 'Help & Support', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.keyhole, 'Privacy Policy', JRoutes.checkEmail),
  DrawerItem(PhosphorIcons.signOut, 'Sign Out', JRoutes.checkEmail),
];

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, separatorIndex) => const Divider(),
      itemCount: drawerItems.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = drawerItems[index];
        return ListTile(
          key: Key(index.toString()),
          dense: true,
          leading: Icon(item.icon, color: theme.primaryColor),
          style: ListTileStyle.drawer,
          title: Text(
            item.title,
            style: textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w500,
              letterSpacing: JScreenUtil.fontSize(-0.5),
            ),
          ),
        );
      },
    );
  }
}