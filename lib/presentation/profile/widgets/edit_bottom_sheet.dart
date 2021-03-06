import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';

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

class EditBottomSheet extends StatelessWidget {
  const EditBottomSheet({
    Key? key,
    required this.field,
    required this.action,
    required this.title,
    this.loading = false,
  }) : super(key: key);

  final JTextFormField field;
  final void Function()? action;
  final String title;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Parent(
      style: sheetStyle(theme),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: JScreenUtil.r(30),
        children: <Widget>[
          Text('Update your $title', style: textTheme.titleLarge),
          field,
          JButton(title: 'Save', onPressed: action, loading: loading),
        ],
      ),
    );
  }
}

class EditNameBottomSheet extends StatelessWidget {
  const EditNameBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final _editNameFormKey = GlobalKey<FormState>();

    _handleSave() {
      bloc.add(ProfileEvent.profileUpdated());
      bloc.add(ProfileEvent.editPressed(false));
    }

    _validate(_) {
      return bloc.state.user.name.value.fold(
        (f) => f.mapOrNull(empty: (_) => JErrorMessages.nameRequired),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
          p.user.name.isValid() != p.user.name.isValid(),
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) =>
          p.user.name.isValid() == p.user.name.isValid() ||
          p.isSaving != c.isSaving,
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

        return Form(
          key: _editNameFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: EditBottomSheet(
            title: 'name',
            field: JTextFormField(
              label: 'Name',
              initialValue: user.name,
              enabled: !bloc.state.isSaving,
              keyboardType: TextInputType.name,
              onChanged: (e) => bloc.add(ProfileEvent.nameChanged(e)),
              validator: _validate,
            ),
            loading: bloc.state.isSaving,
            action: !bloc.state.user.name.isValid() || bloc.state.isSaving
                ? null
                : _handleSave,
          ),
        );
      },
    );
  }
}

class EditUserTypeBottomSheet extends StatelessWidget {
  const EditUserTypeBottomSheet({Key? key}) : super(key: key);

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
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) =>
          p.user.userType == p.user.userType || p.isSaving != c.isSaving,
      builder: (context, state) {
        final userType = bloc.state.user.userType!.getOrCrash();

        return Parent(
          style: sheetStyle(theme),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: JScreenUtil.r(30),
            children: <Widget>[
              Text('Update your account type', style: textTheme.titleLarge),
              for (int i = 0; UserType.values.length > i; i++)
                RadioListTile<UserType>(
                  value: UserType.values[i],
                  groupValue: userType,
                  onChanged: (t) => bloc.add(ProfileEvent.userTypeChanged(t!)),
                  title: Text(UserType.values[i].value),
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


class EditPhoneBottomSheet extends StatelessWidget {
  const EditPhoneBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _editPhoneFormKey = GlobalKey<FormState>();
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _handleSave() {
      bloc.add(ProfileEvent.profileUpdated());
      bloc.add(ProfileEvent.editPressed(false));
    }

    _validate(_) {
      return bloc.state.user.phone!.value.fold(
        (f) => f.mapOrNull(invalidPhone: (_) => JErrorMessages.invalidPhone),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
          p.user.phone!.isValid() != p.user.phone!.isValid(),
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) =>
          p.user.phone!.isValid() == p.user.phone!.isValid() ||
          p.isSaving != c.isSaving,
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

        return Form(
          key: _editPhoneFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: EditBottomSheet(
            title: 'phone',
            loading: bloc.state.isSaving,
            field: JTextFormField(
              label: 'Phone',
              initialValue: user.phone,
              enabled: !bloc.state.isSaving,
              keyboardType: TextInputType.phone,
              onChanged: (e) => bloc.add(ProfileEvent.phoneChanged(e)),
              validator: _validate,
            ),
            action: bloc.state.user.phone == null ||
                    !bloc.state.user.phone!.isValid() ||
                    bloc.state.isSaving
                ? null
                : _handleSave,
          ),
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

    _handleSave() {
      bloc.add(ProfileEvent.profileUpdated());
      bloc.add(ProfileEvent.editPressed(false));
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) =>
          p.user.gender == p.user.gender || p.isSaving != c.isSaving,
      builder: (context, state) {
        final gender = bloc.state.user.gender!.getOrCrash();

        return Parent(
          style: sheetStyle(theme),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: JScreenUtil.r(30),
            children: <Widget>[
              Text('Update your gender', style: textTheme.titleLarge),
              for (int i = 0; Gender.values.length > i; i++)
                RadioListTile<Gender>(
                  value: Gender.values[i],
                  groupValue: gender,
                  onChanged: (g) => bloc.add(ProfileEvent.genderChanged(g!)),
                  title: Text(Gender.values[i].value),
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

class EditAgeBottomSheet extends StatelessWidget {
  const EditAgeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final _editAgeFormKey = GlobalKey<FormState>();
    final user = JUserDto.fromDomain(bloc.state.user);

    _handleSave() => bloc.state.user.age == null ||
            !bloc.state.user.age!.isValid() ||
            bloc.state.isSaving
        ? null
        : () {
            bloc.add(ProfileEvent.profileUpdated());
            bloc.add(ProfileEvent.editPressed(false));
          };

    _validate(_) {
      return bloc.state.user.age?.value.fold(
        (f) => f.mapOrNull(
          tooYoung: (_) => JErrorMessages.tooYoung,
          tooOld: (_) => JErrorMessages.tooOld,
        ),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) {
        return p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
            p.user.age?.isValid() != p.user.age?.isValid();
      },
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) {
        return p.user.age?.isValid() == p.user.age?.isValid() ||
            p.isSaving != c.isSaving;
      },
      builder: (context, state) {
        return Form(
          key: _editAgeFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: EditBottomSheet(
            title: 'age',
            field: JTextFormField(
              label: 'Age',
              initialValue: user.age?.toString(),
              enabled: !bloc.state.isSaving,
              onChanged: (e) => bloc.add(
                ProfileEvent.ageChanged(num.parse(e), user.userType!),
              ),
              keyboardType: TextInputType.number,
              validator: user.userType == UserType.donor ? _validate : null,
            ),
            loading: bloc.state.isSaving,
            action: _handleSave(),
          ),
        );
      },
    );
  }
}

class EditHeightBottomSheet extends StatelessWidget {
  const EditHeightBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final user = JUserDto.fromDomain(bloc.state.user);

    _handleSave() {
      bloc.add(ProfileEvent.profileUpdated());
      bloc.add(ProfileEvent.editPressed(false));
    }

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
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return EditBottomSheet(
          title: 'height',
          field: JTextFormField(
            label: 'Height',
            initialValue: user.height?.toString(),
            enabled: !bloc.state.isSaving,
            onChanged: (e) => bloc.add(
              ProfileEvent.heightChanged(num.parse(e)),
            ),
            keyboardType: TextInputType.number,
          ),
          loading: bloc.state.isSaving,
          action: _handleSave,
        );
      },
    );
  }
}

class EditWeightBottomSheet extends StatelessWidget {
  const EditWeightBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final _editWeightFormKey = GlobalKey<FormState>();
    final user = JUserDto.fromDomain(bloc.state.user);

    _handleSave() => bloc.state.user.weight == null ||
            !bloc.state.user.weight!.isValid() ||
            bloc.state.isSaving
        ? null
        : () {
            bloc.add(ProfileEvent.profileUpdated());
            bloc.add(ProfileEvent.editPressed(false));
          };

    _validate(_) {
      return bloc.state.user.weight?.value.fold(
        (f) => f.mapOrNull(
          weightTooBig: (_) => JErrorMessages.weightTooBig,
          weightTooSmall: (_) => JErrorMessages.weightTooSmall,
        ),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) {
        return p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
            p.user.weight?.isValid() != p.user.weight?.isValid();
      },
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) {
        return p.user.weight?.isValid() == p.user.weight?.isValid() ||
            p.isSaving != c.isSaving;
      },
      builder: (context, state) {
        return Form(
          key: _editWeightFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: EditBottomSheet(
            title: 'weight',
            field: JTextFormField(
              label: 'Weight',
              initialValue: user.weight?.toString(),
              enabled: !bloc.state.isSaving,
              onChanged: (e) => bloc.add(
                ProfileEvent.weightChanged(num.parse(e), user.userType!),
              ),
              keyboardType: TextInputType.number,
              validator: _validate,
            ),
            loading: bloc.state.isSaving,
            action: _handleSave(),
          ),
        );
      },
    );
  }
}
