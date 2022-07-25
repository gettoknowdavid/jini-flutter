import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_icons.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_bottom_sheets.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileBloodGroupWidget extends StatelessWidget {
  const ProfileBloodGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _onTap() => JBottomSheets.editBloodGroup(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.user.bloodGroup != c.user.bloodGroup,
      listener: (context, state) => {state.user.bloodGroup},
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);
        bool isEditing = bloc.state.isEditing;

        return Parent(
          gesture: Gestures()..onTap(isEditing ? _onTap : () {}),
          style: ParentStyle()..padding(horizontal: JScreenUtil.r(18)),
          child: user.bloodGroup == null
              ? const _NullBloodGroupWidget()
              : Row(
                  children: [
                    Parent(
                      style: JWidgetStyles.bloodGroupWidgetStyles,
                      child: Text(
                        user.bloodGroup!.value,
                        style: textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    JScreenUtil.hSpace(20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.bloodGroup!.desc,
                            style: textTheme.titleLarge,
                          ),
                          JScreenUtil.vSpace(4),
                          Text('Learn More', style: textTheme.caption),
                        ],
                      ),
                    ),
                    JScreenUtil.hSpace(30),
                    if (isEditing) JIcons.edit
                  ],
                ),
        );
      },
    );
  }
}

class _NullBloodGroupWidget extends StatelessWidget {
  const _NullBloodGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Select your blood group'),
      leading: Parent(
        style: JWidgetStyles.bloodGroupWidgetStyles,
        child: Icon(PhosphorIcons.drop, color: Colors.white),
      ),
    );
  }
}
