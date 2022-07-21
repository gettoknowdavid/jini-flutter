import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/auth_bloc.dart';

import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_avatar.dart';
import 'package:jini/presentation/core/common/j_location_widget.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/profile/widgets/profile_blood_group_widget.dart';
import 'package:jini/presentation/profile/widgets/profile_email_widget.dart';
import 'package:jini/presentation/profile/widgets/profile_menu.dart';
import 'package:jini/presentation/profile/widgets/profile_other_details.dart';
import 'package:jini/presentation/profile/widgets/profile_stats.dart';
import 'package:jini/presentation/profile/widgets/profile_user_name.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return JPage(
      addGlobalPadding: false,
      loading:
          authBloc.state == const AuthState.loading() || bloc.state.isSaving,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: JBackButton(
            color: Colors.white,
            onTap: () {
              bloc.add(ProfileEvent.editPressed(false));
              Get.back();
            },
          ),
          actions: [const ProfileMenu()],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Parent(
                style: JWidgetStyles.headerStyles,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const JAvatar(),
                    JScreenUtil.vSpace(30),
                    const ProfileUserName(),
                    JScreenUtil.vSpace(4),
                    const ProfileEmailWidget(),
                    JScreenUtil.vSpace(4),
                    const JLocationWidget(),
                    JScreenUtil.vSpace(30),
                    const ProfileStats(),
                  ],
                ),
              ),
              JScreenUtil.vSpace(30),
              const ProfileBloodGroupWidget(),
              JScreenUtil.vSpace(30),
              const ProfileOtherDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
