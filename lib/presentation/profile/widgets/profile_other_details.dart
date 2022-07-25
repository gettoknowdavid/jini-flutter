import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/presentation/core/common/date_formatter.dart';
import 'package:jini/presentation/core/widgets/j_bottom_sheets.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/profile/widgets/profile_details_item.dart';

class ProfileOtherDetails extends StatelessWidget {
  const ProfileOtherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
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
              onTap: () => JBottomSheets.editUserType(context),
            ),
            JScreenUtil.vSpace(10),
            ProfileDetailsItem(
              title: 'Phone',
              icon: PhosphorIcons.phone,
              value: user.phone,
              onTap: () => JBottomSheets.editPhone(context),
            ),
            JScreenUtil.vSpace(10),
            ProfileDetailsItem(
              title: 'Gender',
              icon: PhosphorIcons.genderIntersex,
              value: user.gender?.value,
              onTap: () => JBottomSheets.editGender(context),
            ),
            JScreenUtil.divider,
            ProfileDetailsItem(
              title: 'Date of Birth',
              icon: PhosphorIcons.calendarBlank,
              value: user.dob == null ? null : dateFormat(user.dob!),
              onTap: () => JBottomSheets.editDateOfBirth(context),
            ),
            JScreenUtil.divider,
            ProfileDetailsItem(
              title: 'Height',
              icon: PhosphorIcons.arrowsVertical,
              value: user.height == 0 ? null : user.height?.toString(),
              onTap: () => JBottomSheets.editHeight(context),
            ),
            JScreenUtil.divider,
            ProfileDetailsItem(
              title: 'Weight',
              icon: PhosphorIcons.arrowsHorizontal,
              value: user.weight == null ? null : user.weight?.toString(),
              onTap: () => JBottomSheets.editWeight(context),
            ),
            JScreenUtil.vSpace(30)
          ],
        );
      },
    );
  }
}
