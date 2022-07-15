import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';
import 'package:jini/presentation/core/common/j_icons.dart';

class ProfileUserName extends StatelessWidget {
  const ProfileUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    _onTap() => Get.bottomSheet(const EditNameBottomSheet());

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.isSaving != c.isSaving || p.isEditing != c.isEditing,
      listener: (context, state) => {
        state.isSaving,
        isEditing = state.isEditing,
      },
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

        return GestureDetector(
          onTap: isEditing ? _onTap : null,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontSize: JScreenUtil.fontSize(32),
                      color: Colors.white,
                    ),
              ),
              JScreenUtil.hSpace(4),
              if (isEditing) JIcons.pencil,
            ],
          ),
        );
      },
    );
  }
}
