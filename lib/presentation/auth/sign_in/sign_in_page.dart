import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/sign_in/sign_in_bloc.dart';
import 'package:jini/presentation/auth/sign_in/widgets/sign_in_form.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<SignInBloc>(context);
    bool loading = false;

    return BlocListener<SignInBloc, SignInState>(
      bloc: bloc,
      listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      listener: (context, state) => loading = state.isSubmitting,
      child: JPage(
        loading: loading,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            const JThemeSwitch(),
          ],
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: JScreenUtil.globalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Welcome \nBack!', style: textTheme.headlineLarge),
                JScreenUtil.vSpace(4),
                Text(
                  'Welcome back. You have been missed. \nPlease, sign into your account.',
                  style: textTheme.titleMedium,
                ),
                JScreenUtil.vSpace(30),
                const SignInForm(),
                JScreenUtil.vSpace(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        JRouter.signUp,
                      ),
                      child: Text('Sign Up'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
