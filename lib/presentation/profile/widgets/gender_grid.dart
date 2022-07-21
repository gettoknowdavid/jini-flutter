import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';

class GenderGrid extends StatelessWidget {
  const GenderGrid({Key? key}) : super(key: key);

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
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.user.gender != c.user.gender,
      builder: (context, state) {
        return GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: Gender.values.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: JScreenUtil.sh(0.07),
            crossAxisSpacing: JScreenUtil.r(10),
            mainAxisSpacing: JScreenUtil.r(10),
          ),
          itemBuilder: (context, i) {
            final _gender = Gender.values[i];
            final _cGender = bloc.state.user.gender;
            final selected =
                _cGender == null ? false : _gender == _cGender.getOrCrash();
            return Parent(
              gesture: Gestures()
                ..onTap(() => bloc.add(ProfileEvent.genderChanged(_gender))),
              style: JWidgetStyles.selectItemsStyles(selected, theme),
              child: Text(
                _gender.value,
                style: textTheme.bodyLarge?.copyWith(
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

class EditGenderBottomSheet extends StatelessWidget {
  const EditGenderBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    _handleSave() => bloc.add(ProfileEvent.profileUpdated());

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => Get.close(1)),
        );
      },
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return Parent(
          style: JWidgetStyles.profileSheetStyle(theme),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: JScreenUtil.r(30),
            children: <Widget>[
              Text('Update your gender', style: textTheme.titleLarge),
              const GenderGrid(),
              JButton(
                title: 'Save',
                onPressed: _handleSave,
                loading: bloc.state.isSaving,
              ),
            ],
          ),
        );
      },
    );
  }
}
