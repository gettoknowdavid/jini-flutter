import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class ProfileEmailWidget extends StatelessWidget {
  const ProfileEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

        return Txt(
          user.email!,
          style: TxtStyle()
            ..textColor(Colors.white70)
            ..fontSize(JScreenUtil.fontSize(16)),
        );
      },
    );
  }
}
