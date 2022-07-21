import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JAvatar extends StatelessWidget {
  const JAvatar({
    Key? key,
    this.isForProfile = true,
    this.radius = 0.185,
  }) : super(key: key);

  final double radius;
  final bool isForProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      buildWhen: (p, c) => p.isEditing != c.isEditing,
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);
        bool isEditing = bloc.state.isEditing;

        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: (isForProfile && isEditing)
                  ? () => bloc.add(const ProfileEvent.avatarChanged())
                  : null,
              child: CircleAvatar(
                radius: JScreenUtil.sw(radius + 0.005),
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: JScreenUtil.sw(radius),
                  backgroundImage: bloc.state.avatarFile == null
                      ? null
                      : FileImage(bloc.state.avatarFile!),
                  foregroundImage:
                      user.avatar == null ? null : NetworkImage(user.avatar!),
                  child: user.avatar != null || bloc.state.avatarFile != null
                      ? const SizedBox()
                      : Text(
                          user.name![0].toUpperCase(),
                          style: textTheme.headlineLarge?.copyWith(
                            color: Colors.white,
                            fontSize: JScreenUtil.fontSize(radius * 250),
                          ),
                        ),
                ),
              ),
            ),
            if (isEditing && isForProfile)
              Positioned(
                bottom: JScreenUtil.w(1),
                right: JScreenUtil.w(5),
                child: Parent(
                  style: ParentStyle()
                    ..circle()
                    ..padding(all: JScreenUtil.r(8))
                    ..background.color(Colors.white)
                    ..alignmentContent.center(),
                  child: Icon(PhosphorIcons.pencil, color: Colors.black87),
                ),
              ),
            if (!isEditing && isForProfile)
              Positioned(
                bottom: JScreenUtil.w(-5),
                right: JScreenUtil.w(-10),
                child: Parent(
                  style: ParentStyle()
                    ..borderRadius(all: JScreenUtil.radius(8))
                    ..elevation(14, opacity: 0.4)
                    ..padding(
                      horizontal: JScreenUtil.radius(12),
                      vertical: JScreenUtil.radius(4),
                    )
                    ..background.color(Colors.blue)
                    ..alignmentContent.center(),
                  child: Text(
                    user.userType!.value.toUpperCase(),
                    style: TextStyle(
                      fontSize: JScreenUtil.fontSize(12),
                      color: Colors.white,
                      letterSpacing: JScreenUtil.fontSize(1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
