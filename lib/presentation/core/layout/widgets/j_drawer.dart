import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/layout/widgets/drawer_list.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';

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
                child: const JBackButton(),
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
              const DrawerList(),
            ],
          ),
        ),
      ),
    );
  }
}
