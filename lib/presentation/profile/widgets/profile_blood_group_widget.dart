import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_icons.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileBloodGroupWidget extends StatelessWidget {
  const ProfileBloodGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _onTap() => Get.bottomSheet(const EditBloodGroupBottomSheet());

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

final sheetStyle = (ThemeData theme) => ParentStyle()
  ..borderRadius(
    topLeft: JScreenUtil.r(30),
    topRight: JScreenUtil.r(30),
  )
  ..padding(
    horizontal: JScreenUtil.r(18),
    vertical: JScreenUtil.r(22),
  )
  ..background.color(theme.canvasColor);

class EditBloodGroupBottomSheet extends StatelessWidget {
  const EditBloodGroupBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    _handleSave() {
      bloc.add(ProfileEvent.profileUpdated());
      bloc.add(ProfileEvent.editPressed(false));
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => Get.close(1)),
        );
      },
      buildWhen: (p, c) =>
          p.user.bloodGroup == p.user.bloodGroup || p.isSaving != c.isSaving,
      builder: (context, state) {
        return Parent(
          style: sheetStyle(theme),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: JScreenUtil.r(30),
            children: <Widget>[
              Text('Update your blood group', style: textTheme.titleLarge),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: BloodGroup.values.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: JScreenUtil.r(10),
                  mainAxisSpacing: JScreenUtil.r(10),
                ),
                itemBuilder: (context, i) {
                  final _bloodGroup = BloodGroup.values[i];
                  final _currentBG = bloc.state.user.bloodGroup;

                  return _BloodGroupItem(
                    isSelected: _currentBG == null
                        ? false
                        : _bloodGroup == _currentBG.getOrCrash(),
                    bloodGroup: _bloodGroup,
                    onSelect: () {
                      bloc.add(ProfileEvent.bloodGroupChanged(_bloodGroup));
                    },
                  );
                },
              ),
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

class _BloodGroupItem extends StatelessWidget {
  const _BloodGroupItem({
    Key? key,
    required this.bloodGroup,
    required this.onSelect,
    required this.isSelected,
  }) : super(key: key);

  final BloodGroup bloodGroup;
  final void Function() onSelect;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Parent(
      gesture: Gestures()..onTap(onSelect),
      style: ParentStyle(),
      child: ElevatedButton(
        onPressed: isSelected ? () {} : null,
        child: Text(
          bloodGroup.value,
          style: textTheme.titleLarge?.copyWith(
            color: isSelected ? Colors.white : Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
