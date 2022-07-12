import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class ProfileSaveButton extends StatelessWidget {
  const ProfileSaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => isEditing = state.isEditing,
      builder: (context, state) {
        return Txt(
          isEditing ? 'Save' : 'Edit',
          gesture: Gestures()
            ..onTap(() {
              bloc.add(ProfileEvent.editPressed(!isEditing));
            }),
          style: TxtStyle()
            ..margin(all: JScreenUtil.r(14))
            ..padding(horizontal: JScreenUtil.r(14))
            ..borderRadius(all: JScreenUtil.r(8))
            ..fontSize(JScreenUtil.fontSize(16))
            ..textColor(Colors.white)
            ..alignmentContent.center()
            ..background.color(Colors.white12),
        );
      },
    );
  }
}
