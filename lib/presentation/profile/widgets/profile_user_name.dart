import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_bottom_sheets.dart';
import 'package:jini/presentation/core/common/j_icons.dart';

class ProfileUserName extends StatelessWidget {
  const ProfileUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      buildWhen: (p, c) => p.isEditing != c.isEditing,
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);
        bool isEditing = bloc.state.isEditing;

        return GestureDetector(
          onTap: isEditing ? JBottomSheets.editName(context) : null,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name!,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontSize: user.name != null
                          ? JScreenUtil.fontSize(32)
                          : JScreenUtil.fontSize(18),
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
