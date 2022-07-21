import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _editPhoneFormKey = GlobalKey<FormState>();
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _validate(_) {
      return bloc.state.user.phone!.value.fold(
        (f) => f.mapOrNull(invalidPhone: (_) => JErrorMessages.invalidPhone),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => Get.isBottomSheetOpen! ? Get.close(1) : null,
          ),
        );
      },
      buildWhen: (p, c) => p.user.phone != c.user.phone,
      builder: (context, state) {
        return Form(
          key: _editPhoneFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: JTextFormField(
            label: 'Phone',
            hint: 'Add your phone number',
            initialValue: bloc.state.user.phone?.getOrCrash() ?? null,
            enabled: !bloc.state.isSaving,
            keyboardType: TextInputType.phone,
            onChanged: (e) => bloc.add(ProfileEvent.phoneChanged(e)),
            validator: _validate,
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
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _handleSave() => bloc.add(ProfileEvent.profileUpdated());

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      buildWhen: (p, c) =>
          p.user.phone!.isValid() != c.user.phone!.isValid() ||
          p.isSaving != c.isSaving,
      builder: (context, state) {
        final _user = bloc.state.user;

        return EditBottomSheet(
          title: 'phone',
          loading: bloc.state.isSaving,
          field: const PhoneField(),
          action: _user.phone == null || !_user.phone!.isValid()
              ? null
              : _handleSave,
        );
      },
    );
  }
}
