import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/auth/sign_in/sign_in_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_snackbars.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/core/routes/j_router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _signInFormKey = GlobalKey<FormState>();
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<SignInBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);
    final profileBloc = BlocProvider.of<ProfileBloc>(context);

    return MultiBlocListener(
      listeners: [
        BlocListener<SignInBloc, SignInState>(
          bloc: bloc,
          listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
          listener: (context, state) {
            state.authFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (f) {
                  JSnackbars.errorSnackbar(
                    title: 'Authentication Failure',
                    message: f.maybeMap(
                      orElse: () => '',
                      serverError: (_) => JErrorMessages.serverError,
                      invalidEmailOrPassword: (_) =>
                          JErrorMessages.invalidEmailOrPassword,
                    ),
                  );
                },
                (_) {
                  JSnackbars.closeAll;
                  authBloc.add(const AuthEvent.authCheckRequested());
                  authBloc.add(const AuthEvent.authCheckVerified());
                  authBloc.add(const AuthEvent.checkProfileCompleted());
                  profileBloc.add(const ProfileEvent.initialized());
                },
              ),
            );
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          bloc: authBloc,
          listenWhen: (p, c) => p != c,
          listener: (context, state) {
            state.mapOrNull(
              profileNotCompleted: (_) => Navigator.pushReplacementNamed(
                context,
                JRouter.profileFormPage,
              ),
              profileCompleted: (_) => Navigator.pushReplacementNamed(
                context,
                JRouter.layout,
              ),
              unverified: (_) => Navigator.pushReplacementNamed(
                context,
                JRouter.verification,
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<SignInBloc, SignInState>(
        bloc: bloc,
        builder: (context, state) {
          return Form(
            key: _signInFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                JTextFormField(
                  label: 'Email address',
                  hint: 'johndoe@example.com',
                  enabled: !bloc.state.isSubmitting,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (e) => bloc.add(SignInEvent.emailChanged(e)),
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
                  onChanged: (p) => bloc.add(SignInEvent.passwordChanged(p)),
                  validator: (_) => bloc.state.password.value.fold(
                    (f) => f.mapOrNull(
                      empty: (_) => JErrorMessages.passwordRequired,
                    ),
                    (_) => null,
                  ),
                ),
                JScreenUtil.vSpace(20),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    JRouter.forgotPassword,
                  ),
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: textTheme.titleSmall,
                  ),
                ),
                JScreenUtil.vSpace(30),
                JButton(
                  title: 'Sign In',
                  loading: bloc.state.isSubmitting,
                  disabled: !bloc.state.email.isValid() ||
                      bloc.state.password.getOrCrash() == null,
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      bloc.add(SignInEvent.signInPressed());
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
