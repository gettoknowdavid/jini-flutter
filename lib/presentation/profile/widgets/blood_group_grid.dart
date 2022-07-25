import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';

class BloodGroupGrid extends StatelessWidget {
  const BloodGroupGrid({Key? key, this.isInitEdit = false}) : super(key: key);
  final bool isInitEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => isInitEdit ? null : Navigator.of(context).pop(),
          ),
        );
      },
      buildWhen: (p, c) => p.user.bloodGroup != c.user.bloodGroup,
      builder: (context, state) {
        return GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: BloodGroup.values.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: JScreenUtil.sh(0.08),
            crossAxisSpacing: JScreenUtil.r(10),
            mainAxisSpacing: JScreenUtil.r(10),
          ),
          itemBuilder: (context, i) {
            final _bg = BloodGroup.values[i];
            final _cBg = bloc.state.user.bloodGroup;
            final selected = _cBg == null ? false : _bg == _cBg.getOrCrash();

            return Parent(
              gesture: Gestures()
                ..onTap(() => bloc.add(ProfileEvent.bloodGroupChanged(_bg))),
              style: JWidgetStyles.selectItemsStyles(selected, theme),
              child: Text(
                _bg.value,
                style: textTheme.titleMedium?.copyWith(
                  color: selected ? Colors.white : textTheme.bodyLarge?.color,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class EditBloodGroupBottomSheet extends StatelessWidget {
  const EditBloodGroupBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _handleSave() {
      bloc.add(ProfileEvent.profileUpdated());
      bloc.add(ProfileEvent.editPressed(false));
    }

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return EditBottomSheet(
          field: const BloodGroupGrid(),
          action: _handleSave,
          title: 'blood group',
          loading: bloc.state.isSaving,
          height: JScreenUtil.sh(0.55),
        );
      },
    );
  }
}
