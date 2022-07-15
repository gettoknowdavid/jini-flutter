import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_icons.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class ProfileDetailsItem extends StatelessWidget {
  const ProfileDetailsItem({
    Key? key,
    required this.title,
    this.value,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String? value;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => isEditing = state.isEditing,
      builder: (context, state) {
        return Parent(
          gesture: Gestures()..onTap(isEditing ? onTap : () {}),
          style: ParentStyle()
            ..padding(all: JScreenUtil.r(18))
            ..ripple(isEditing),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: theme.primaryColor),
              JScreenUtil.hSpace(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: textTheme.caption),
                  JScreenUtil.vSpace(4),
                  Text(
                    value == null ? 'Add your $title' : value!,
                    style: textTheme.titleMedium,
                  ),
                ],
              ),
              const Spacer(),
              if (isEditing) JIcons.edit
            ],
          ),
        );
      },
    );
  }
}
