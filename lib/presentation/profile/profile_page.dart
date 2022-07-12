import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jini/presentation/core/common/j_avatar.dart';
import 'package:jini/presentation/core/common/j_location_widget.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/profile/widgets/profile_blood_group_widget.dart';
import 'package:jini/presentation/profile/widgets/profile_details_item.dart';
import 'package:jini/presentation/profile/widgets/profile_stats.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEdit = Get.arguments;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const JBackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Parent(
              style: JWidgetStyles.headerStyles,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const JAvatar(showBadge: true),
                  JScreenUtil.vSpace(30),
                  Txt(
                    'David Michael',
                    style: TxtStyle()
                      ..textColor(Colors.white)
                      ..fontSize(JScreenUtil.fontSize(32)),
                  ),
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
            const ProfileDetailsItem(
              title: 'Email',
              value: 'knowdavidmichael@gmail.com',
              icon: PhosphorIcons.envelope,
            ),
            JScreenUtil.vSpace(10),
            const ProfileDetailsItem(
              title: 'Phone',
              value: '+234 816 028 5225',
              icon: PhosphorIcons.phone,
            ),
            JScreenUtil.vSpace(10),
            const ProfileDetailsItem(
              title: 'Gender',
              value: 'Male',
              icon: PhosphorIcons.genderIntersex,
            ),
            JScreenUtil.divider,
            const ProfileDetailsItem(
              title: 'Age',
              value: '24',
              icon: PhosphorIcons.calendarBlank,
            ),
            JScreenUtil.divider,
            const ProfileDetailsItem(
              title: 'Height',
              value: '6.2',
              icon: PhosphorIcons.arrowsVertical,
            ),
            JScreenUtil.divider,
            const ProfileDetailsItem(
              title: 'Weight',
              value: '65.9',
              icon: PhosphorIcons.arrowsHorizontal,
            ),
            JScreenUtil.vSpace(30)
          ],
        ),
      ),
    );
  }
}
