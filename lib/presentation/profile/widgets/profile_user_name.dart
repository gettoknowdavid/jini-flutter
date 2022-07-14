import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';
import 'package:jini/presentation/profile/widgets/pencil_button.dart';

class ProfileUserName extends StatelessWidget {
  const ProfileUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    _onTap() => isEditing ? Get.bottomSheet(const EditNameBottomSheet()) : null;

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => isEditing = state.isEditing,
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Txt(
              user.name,
              gesture: Gestures()..onTap(_onTap),
              style: TxtStyle()
                ..textColor(Colors.white)
                ..fontSize(JScreenUtil.fontSize(32)),
            ),
            if (isEditing) PencilButton(onTap: () {}, color: Colors.white),
          ],
        );
      },
    );
  }
}
