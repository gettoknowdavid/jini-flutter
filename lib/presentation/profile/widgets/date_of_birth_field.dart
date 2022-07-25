import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/date_formatter.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';

class DateOfBirthField extends StatefulWidget {
  const DateOfBirthField({
    Key? key,
    this.validate = false,
    this.isInitEdit = false,
  }) : super(key: key);
  final bool validate;
  final bool isInitEdit;

  @override
  State<DateOfBirthField> createState() => _DateOfBirthFieldState();
}

class _DateOfBirthFieldState extends State<DateOfBirthField> {
  late TextEditingController dobController;
  final _editDOBFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _validator(_) {
      return bloc.state.user.dob!.value.fold(
        (f) => f.mapOrNull(
          tooYoung: (_) => JErrorMessages.tooYoung,
          tooOld: (_) => JErrorMessages.tooOld,
        ),
        (_) => null,
      );
    }

    dobController = TextEditingController(
      text: widget.validate
          ? dateFormat(bloc.state.user.dob?.getOrCrash())
          : null,
    );

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => widget.isInitEdit ? null : Navigator.of(context).pop(),
          ),
        );
      },
      buildWhen: (p, c) => p.user.dob != c.user.dob,
      builder: (context, state) {
        final _user = bloc.state.user;
        final _userType = _user.userType?.getOrCrash();
        return Form(
          key: _editDOBFormKey,
          autovalidateMode: widget.validate
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: JTextFormField(
            label: 'Date of birth',
            hint: 'Select date of birth',
            controller: dobController,
            enabled: !bloc.state.isSaving,
            validator: widget.validate ? _validator : null,
            onTap: () async {
              DateTime? _date = await showDatePicker(
                context: context,
                initialDate: _user.dob?.getOrCrash() ?? DateTime.now(),
                firstDate: DateTime(1800),
                lastDate: DateTime.now(),
              );

              if (_date != null) {
                bloc.add(ProfileEvent.dobChanged(_date, _userType!));
                setState(() => dobController.text = dateFormat(_date));
              }
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    dobController.dispose();
  }
}

class EditDOBBottomSheet extends StatelessWidget {
  const EditDOBBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _handleSave() => bloc.add(ProfileEvent.profileUpdated());

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      buildWhen: (p, c) =>
          p.user.dob!.isValid() != c.user.dob!.isValid() ||
          p.isSaving != c.isSaving,
      builder: (context, state) {
        final _user = bloc.state.user;

        return EditBottomSheet(
          title: 'date of birth',
          field: const DateOfBirthField(validate: true),
          loading: bloc.state.isSaving,
          action:
              _user.dob == null || !_user.dob!.isValid() ? null : _handleSave,
        );
      },
    );
  }
}
