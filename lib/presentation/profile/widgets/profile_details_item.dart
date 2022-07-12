import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/profile/widgets/pencil_button.dart';

class ProfileDetailsItem extends StatelessWidget {
  const ProfileDetailsItem({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => isEditing = state.isEditing,
      builder: (context, state) {
        return Parent(
          gesture: Gestures()..onTap(() {}),
          style: ParentStyle()
            ..padding(all: JScreenUtil.r(18))
            ..ripple(true),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: theme.primaryColor),
              JScreenUtil.hSpace(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Txt(title, style: TxtStyle()..fontSize(12)),
                  JScreenUtil.vSpace(4),
                  Txt(value, style: TxtStyle()..fontSize(16)),
                ],
              ),
              const Spacer(),
              if (isEditing) PencilButton(onTap: () {}, color: Colors.black)
            ],
          ),
        );
      },
    );
  }
}
