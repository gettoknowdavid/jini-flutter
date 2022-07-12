import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/profile/widgets/pencil_button.dart';

class ProfileBloodGroupWidget extends StatelessWidget {
  const ProfileBloodGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => isEditing = state.isEditing,
      builder: (context, state) {
        return Parent(
          style: ParentStyle()..padding(horizontal: JScreenUtil.r(18)),
          child: Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Parent(
                    style: JWidgetStyles.bloodGroupWidgetStyles,
                    child: Txt(
                      'A+',
                      style: TxtStyle()
                        ..textColor(Colors.white)
                        ..fontSize(JScreenUtil.fontSize(26)),
                    ),
                  ),
                  if (isEditing)
                    Positioned(
                      bottom: JScreenUtil.w(-5),
                      right: JScreenUtil.w(-10),
                      child: PencilButton(onTap: () {}, circle: true, size: 16),
                    ),
                ],
              ),
              JScreenUtil.hSpace(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Txt(
                    'A Positive',
                    style: TxtStyle()..fontSize(JScreenUtil.fontSize(20)),
                  ),
                  JScreenUtil.vSpace(4),
                  Txt(
                    'Learn More',
                    style: TxtStyle()..fontSize(JScreenUtil.fontSize(12)),
                    gesture: Gestures()..onTap(() {}),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
