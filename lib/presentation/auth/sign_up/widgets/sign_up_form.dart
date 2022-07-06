import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_snackbars.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/routes/j_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _signUpFormKey = GlobalKey<FormState>();
    final bloc = BlocProvider.of<SignUpBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () => () {},
          (either) => either.fold(
            (f) {
              JSnackbars.errorSnackbar(
                title: 'Sign Up Error',
                message: f.maybeMap(
                  orElse: () => '',
                  emailInUse: (_) => JErrorMessages.emailInUse,
                  serverError: (_) => JErrorMessages.serverError,
                ),
              );
            },
            (r) {
              authBloc.add(const AuthEvent.sendVerifiedEmail());
              Get.offAllNamed(JRoutes.verification);
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: _signUpFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              JTextFormField(
                label: 'Full Name',
                hint: 'John Doe',
                enabled: !bloc.state.isSubmitting,
                onChanged: (e) => bloc.add(SignUpEvent.nameChanged(e)),
                validator: (_) => bloc.state.name.value.fold(
                  (f) => f.mapOrNull(
                    empty: (_) => JErrorMessages.nameRequired,
                  ),
                  (_) => null,
                ),
              ),
              JScreenUtil.vSpace(20),
              JTextFormField(
                label: 'Email address',
                hint: 'johndoe@example.com',
                enabled: !bloc.state.isSubmitting,
                keyboardType: TextInputType.emailAddress,
                onChanged: (e) => bloc.add(SignUpEvent.emailChanged(e)),
                validator: (_) => bloc.state.email.value.fold(
                  (f) => f.mapOrNull(
                    invalidEmail: (_) => JErrorMessages.invalidEmail,
                    empty: (_) => JErrorMessages.emailRequired,
                  ),
                  (_) => null,
                ),
              ),
              JScreenUtil.vSpace(20),
              JTextFormField(
                label: 'Password',
                hint: 'Your password',
                enabled: !bloc.state.isSubmitting,
                isPassword: true,
                onChanged: (e) => bloc.add(SignUpEvent.passwordChanged(e)),
                validator: (_) => bloc.state.password.value.fold(
                  (f) => f.mapOrNull(
                    invalidPassword: (_) => JErrorMessages.invalidPassword,
                    empty: (_) => JErrorMessages.passwordRequired,
                  ),
                  (_) => null,
                ),
              ),
              JScreenUtil.vSpace(30),
              JButton(
                title: 'Sign Up',
                loading: bloc.state.isSubmitting,
                onPressed: () {
                  if (_signUpFormKey.currentState!.validate()) {
                    bloc.add(SignUpEvent.signUpPressed());
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
