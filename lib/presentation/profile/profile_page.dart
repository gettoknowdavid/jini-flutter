import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_avatar.dart';
import 'package:jini/presentation/core/common/j_location_widget.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';
import 'package:jini/presentation/profile/widgets/profile_blood_group_widget.dart';
import 'package:jini/presentation/profile/widgets/profile_details_item.dart';
import 'package:jini/presentation/profile/widgets/profile_email_widget.dart';
import 'package:jini/presentation/profile/widgets/profile_save_button.dart';
import 'package:jini/presentation/profile/widgets/profile_stats.dart';
import 'package:jini/presentation/profile/widgets/profile_user_name.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:jini/domain/core/user_type.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: JBackButton(
          color: Colors.white,
          onTap: () {
            bloc.add(ProfileEvent.editPressed(false));
            Get.back();
          },
        ),
        actions: [const ProfileSaveButton()],
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
            const _OtherDetails(),
          ],
        ),
      ),
    );
  }
}

class _OtherDetails extends StatelessWidget {
  const _OtherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

        return ListView(
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: JScreenUtil.padFromLTRB(18, 0, 18, 0),
              child: const Text('Other Details'),
            ),
            JScreenUtil.vSpace(10),
            ProfileDetailsItem(
              title: 'Account Type',
              icon: PhosphorIcons.user,
              value: user.userType!.value,
              onTap: () => Get.bottomSheet(
                const EditUserTypeBottomSheet(),
                isDismissible: false,
              ),
            ),
            JScreenUtil.vSpace(10),
            ProfileDetailsItem(
              title: 'Phone',
              icon: PhosphorIcons.phone,
              value: user.phone,
              onTap: () => Get.bottomSheet(
                const EditPhoneBottomSheet(),
                isDismissible: false,
              ),
            ),
            JScreenUtil.vSpace(10),
            ProfileDetailsItem(
              title: 'Gender',
              icon: PhosphorIcons.genderIntersex,
              value: user.gender?.value,
              onTap: () => Get.bottomSheet(
                const EditGenderBottomSheet(),
                isDismissible: false,
              ),
            ),
            JScreenUtil.divider,
            ProfileDetailsItem(
              title: 'Age',
              icon: PhosphorIcons.calendarBlank,
              value: user.age == 0 ? null : user.age?.toString(),
              onTap: () => Get.bottomSheet(
                const EditAgeBottomSheet(),
                isDismissible: false,
              ),
            ),
            JScreenUtil.divider,
            ProfileDetailsItem(
              title: 'Height',
              icon: PhosphorIcons.arrowsVertical,
              value: user.height == 0 ? null : user.height?.toString(),
              onTap: () => Get.bottomSheet(
                const EditHeightBottomSheet(),
                isDismissible: false,
              ),
            ),
            JScreenUtil.divider,
            ProfileDetailsItem(
              title: 'Weight',
              icon: PhosphorIcons.arrowsHorizontal,
              value: user.weight == null ? null : user.weight?.toString(),
              onTap: () => Get.bottomSheet(
                const EditWeightBottomSheet(),
                isDismissible: false,
              ),
            ),
            JScreenUtil.vSpace(30)
          ],
        );
      },
    );
  }
}
