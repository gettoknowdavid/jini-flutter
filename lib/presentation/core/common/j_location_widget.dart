import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_icons.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_bottom_sheets.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JLocationWidget extends StatelessWidget {
  const JLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    bool isEditing = bloc.state.isEditing;

    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => isEditing = state.isEditing,
      builder: (context, state) {
        final _user = bloc.state.user;

        if (_user.city == null) {
          return Txt(
            'Set location',
            gesture: Gestures()
              ..onTap(() => JBottomSheets.editLocation(context)),
            style: TxtStyle()
              ..italic()
              ..textColor(Colors.white70)
              ..fontSize(JScreenUtil.fontSize(16)),
          );
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Parent(
              gesture: Gestures()
                ..onTap(isEditing
                    ? () => JBottomSheets.editLocation(context)
                    : () {}),
              style: ParentStyle()
                ..padding(vertical: JScreenUtil.r(6))
                ..ripple(true),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIcons.navigationArrow,
                    color: Colors.white,
                    size: JScreenUtil.fontSize(16),
                  ),
                  JScreenUtil.hSpace(6),
                  Txt(
                    _user.city!,
                    style: TxtStyle()
                      ..textColor(Colors.white70)
                      ..fontSize(JScreenUtil.fontSize(16)),
                  ),
                ],
              ),
            ),
            JScreenUtil.hSpace(6),
            if (isEditing) JIcons.pencil,
          ],
        );
      },
    );
  }
}

class EditLocationBottomSheet extends StatelessWidget {
  const EditLocationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final theme = Theme.of(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      builder: (context, state) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Parent(
            style: ParentStyle()
              ..height(JScreenUtil.sh(0.26))
              ..borderRadius(
                  topLeft: JScreenUtil.r(30), topRight: JScreenUtil.r(30))
              ..padding(
                  horizontal: JScreenUtil.r(18), vertical: JScreenUtil.r(22))
              ..background.color(theme.canvasColor),
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: JScreenUtil.r(30),
              children: <Widget>[
                JButton(
                  title: 'Use Current Location',
                  onPressed: () =>
                      bloc.add(const ProfileEvent.locationChanged()),
                  loading: false,
                ),
                Container(
                  width: JScreenUtil.sw(1),
                  child: ElevatedButton(
                    child: const Text('Pick from map'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: JScreenUtil.borderRadius,
                        side: BorderSide(color: theme.primaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
