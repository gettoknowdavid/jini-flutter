import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';

class EditBottomSheet extends StatelessWidget {
  final Widget field;
  final double? height;
  final void Function()? action;
  final String title;
  final bool loading;

  const EditBottomSheet({
    Key? key,
    required this.field,
    required this.action,
    required this.title,
    this.height,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Parent(
        style: ParentStyle()
          ..height(height ?? JScreenUtil.sh(0.2))
          ..borderRadius(
              topLeft: JScreenUtil.r(30), topRight: JScreenUtil.r(30))
          ..padding(horizontal: JScreenUtil.r(18), vertical: JScreenUtil.r(22))
          ..background.color(theme.canvasColor),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: JScreenUtil.r(30),
          children: <Widget>[
            Text('Update your $title', style: textTheme.titleLarge),
            field,
            JButton(title: 'Save', onPressed: action, loading: loading),
          ],
        ),
      ),
    );
  }
}

class EditHeightBottomSheet extends StatelessWidget {
  const EditHeightBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final user = JUserDto.fromDomain(bloc.state.user);

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
      builder: (context, state) {
        return EditBottomSheet(
          title: 'height',
          field: JTextFormField(
            label: 'Height',
            initialValue: user.height?.toString(),
            enabled: !bloc.state.isSaving,
            keyboardType: TextInputType.number,
            onChanged: (e) => bloc.add(
              ProfileEvent.heightChanged(num.parse(e)),
            ),
          ),
          loading: bloc.state.isSaving,
          action: _handleSave,
        );
      },
    );
  }
}

class EditNameBottomSheet extends StatelessWidget {
  const EditNameBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final _editNameFormKey = GlobalKey<FormState>();

    _handleSave() => bloc.add(ProfileEvent.profileUpdated());

    _validate(_) {
      return bloc.state.user.name?.value.fold(
        (f) => f.mapOrNull(empty: (_) => JErrorMessages.nameRequired),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveOption != c.saveOption ||
          p.user.name?.isValid() != p.user.name?.isValid(),
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => Navigator.of(context).pop(),
          ),
        );
      },
      buildWhen: (p, c) =>
          p.user.name?.isValid() != c.user.name?.isValid() ||
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
            action: bloc.state.user.name == null ||
                    !bloc.state.user.name!.isValid() ||
                    bloc.state.isSaving
                ? null
                : _handleSave,
          ),
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

    _handleSave() => bloc.state.user.weight == null ||
            !bloc.state.user.weight!.isValid() ||
            bloc.state.isSaving
        ? null
        : () => bloc.add(ProfileEvent.profileUpdated());

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
      listenWhen: (p, c) =>
          p.saveOption != c.saveOption ||
          p.user.weight?.isValid() != p.user.weight?.isValid(),
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => Navigator.of(context).pop(),
          ),
        );
      },
      buildWhen: (p, c) {
        return p.user.weight?.isValid() == p.user.weight?.isValid() ||
            p.isSaving != c.isSaving;
      },
      builder: (context, state) {
        final user = JUserDto.fromDomain(bloc.state.user);

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
