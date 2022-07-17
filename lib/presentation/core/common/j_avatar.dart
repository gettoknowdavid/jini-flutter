import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_icons.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JAvatar extends StatelessWidget {
  const JAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) {
        return p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption;
      },
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.isEditing != c.isEditing,
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);
        bool isEditing = bloc.state.isEditing;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Parent(
              gesture: Gestures()
                ..onTap(isEditing
                    ? () => bloc.add(const ProfileEvent.avatarChanged())
                    : () {}),
              style: ParentStyle()
                ..height(JScreenUtil.sw(0.35))
                ..width(JScreenUtil.sw(0.35))
                ..borderRadius(all: JScreenUtil.radius(34))
                ..elevation(14, opacity: 0.4)
                ..alignmentContent.center()
                ..background.color(theme.primaryColor),
              child: user.avatar != null
                  ?isEditing? FileImage(user.avatar!)
                  : Txt(
                      user.name != null ? user.name![0] : 'JI',
                      style: TxtStyle()
                        ..textColor(Colors.white)
                        ..fontSize(JScreenUtil.fontSize(36))
                        ..textAlign.center(),
                    ),
            ),
            if (isEditing)
              Positioned(
                bottom: JScreenUtil.w(-5),
                right: JScreenUtil.w(-10),
                child: Parent(
                  style: ParentStyle()
                    ..circle()
                    ..padding(all: JScreenUtil.r(8))
                    ..background.color(Colors.white54)
                    ..alignmentContent.center(),
                  child: Icon(PhosphorIcons.pencil, size: JScreenUtil.r(20)),
                ),
              ),
            if (!isEditing)
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
