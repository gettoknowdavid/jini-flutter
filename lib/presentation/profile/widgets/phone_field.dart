import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';

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
      listenWhen: (p, c) =>
          p.saveOption != c.saveOption || p.user.phone != c.user.phone,
      listener: (context, state) {
        state.saveOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
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