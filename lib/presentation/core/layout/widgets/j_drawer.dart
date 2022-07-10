import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

class JDrawer extends StatelessWidget {
  const JDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final brightness = theme.brightness;
    final isDark = brightness == Brightness.dark ? true : false;

    return Container(
      height: JScreenUtil.sh(0.9),
      alignment: Alignment.topLeft,
      child: Drawer(
        child: Padding(
          padding: JScreenUtil.drawerPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Get.close(1),
                  child: const Icon(PhosphorIcons.arrowBendUpLeft),
                ),
              ),
              JScreenUtil.vSpace(20),
              Row(
                children: [
                  CircleAvatar(radius: JScreenUtil.sw(0.07)),
                  JScreenUtil.hSpace(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'David Michael',
                        style: textTheme.titleMedium!.copyWith(
                          color: isDark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      JScreenUtil.vSpace(2),
                      Text(
                        'knowdavidmichael@gmail.com',
                        style: textTheme.caption,
                      ),
                    ],
                  ),
                ],
              ),
              JScreenUtil.vSpace(30),
              ListView.separated(
                padding: EdgeInsets.zero,
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
                separatorBuilder: (context, separatorIndex) => const Divider(),
                itemCount: drawerItems.length,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
