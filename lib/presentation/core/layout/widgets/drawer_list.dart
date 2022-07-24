import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DrawerItem {
  DrawerItem(this.icon, this.title, [this.route]);

  final IconData icon;
  final String title;
  final String? route;
}

final List<DrawerItem> drawerItems = <DrawerItem>[
  DrawerItem(PhosphorIcons.magnifyingGlass, 'Find a Donor', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.drop, 'Blood Requests', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.firstAid, 'Donation Centers', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.clock, 'My Appointments', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.question, 'FAQs', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.lifebuoy, 'Help & Support', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.keyhole, 'Privacy Policy', JRouter.checkEmail),
  DrawerItem(PhosphorIcons.signOut, 'Sign Out'),
];

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, separatorIndex) => const Divider(),
      itemCount: drawerItems.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = drawerItems[index];

        return ListTile(
          key: Key(index.toString()),
          onTap: index == 7
              ? () => authBloc.add(AuthEvent.authSignedOut())
              : () => Get.toNamed(item.route!),
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
