import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';

class EditUserTypeBottomSheet extends StatelessWidget {
  const EditUserTypeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _handleSave() => bloc.add(ProfileEvent.profileUpdated());

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => Navigator.of(context).pop(),
          ),
        );
      },
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) => EditBottomSheet(
        title: 'account type',
        action: _handleSave,
        field: const UserTypeGrid(),
        loading: bloc.state.isSaving,
      ),
    );
  }
}

class UserTypeGrid extends StatelessWidget {
  const UserTypeGrid({Key? key}) : super(key: key);

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
            (r) => null,
          ),
        );
      },
      buildWhen: (p, c) => p.user.userType != c.user.userType,
      builder: (context, state) {
        return GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: UserType.values.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: JScreenUtil.sh(0.07),
            crossAxisSpacing: JScreenUtil.r(10),
            mainAxisSpacing: JScreenUtil.r(10),
          ),
          itemBuilder: (context, i) {
            final _userT = UserType.values[i];
            final _cUserT = bloc.state.user.userType;
            final selected =
                _cUserT == null ? false : _userT == _cUserT.getOrCrash();
            return Parent(
              gesture: Gestures()
                ..onTap(() => bloc.add(ProfileEvent.userTypeChanged(_userT))),
              style: JWidgetStyles.selectItemsStyles(selected, theme),
              child: Text(
                _userT.value,
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
