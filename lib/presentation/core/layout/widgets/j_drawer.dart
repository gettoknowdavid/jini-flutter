import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/layout/widgets/drawer_list.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';

class JDrawer extends StatelessWidget {
  const JDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final brightness = theme.brightness;
    final isDark = brightness == Brightness.dark ? true : false;
    final bloc = BlocProvider.of<ProfileBloc>(context);

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
              JScreenUtil.vSpace(10),
              BlocConsumer<ProfileBloc, ProfileState>(
                bloc: bloc,
                listenWhen: (p, c) => p.isEditing != c.isEditing,
                listener: (context, state) => state.isEditing,
                builder: (context, state) {
                  final user = JUserDto.fromDomain(bloc.state.user);

                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.close(1);
                          Get.toNamed(JRoutes.profilePage);
                        },
                        child: CircleAvatar(
                          radius: JScreenUtil.sw(0.07),
                          child: Text('DM'),
                        ),
                      ),
                      JScreenUtil.hSpace(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: textTheme.titleMedium!.copyWith(
                              color: isDark ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          JScreenUtil.vSpace(2),
                          Text(
                            user.email,
                            style: textTheme.caption,
                          ),
                        ],
                      ),
                    ],
                  );
                },
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
