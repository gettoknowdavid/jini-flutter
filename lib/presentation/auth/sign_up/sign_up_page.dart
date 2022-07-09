import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/presentation/auth/sign_up/widgets/sign_up_form.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/core/widgets/j_background.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (f) {
              Get.snackbar(
                'Sign Up Failed',
                f.maybeMap(
                  orElse: () => '',
                  emailInUse: (_) => JErrorMessages.emailInUse,
                  serverError: (_) => JErrorMessages.serverError,
                ),
              );
            },
            (r) {},
          ),
        );
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const JBackButton(),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            const JBackground(),
            Center(
              child: SingleChildScrollView(
                padding: JScreenUtil.globalPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Create a new Account',
                      style: textTheme.headlineLarge,
                    ),
                    JScreenUtil.vSpace(4),
                    Text(
                      'Sign up to create your new account.',
                      style: textTheme.titleMedium,
                    ),
                    JScreenUtil.vSpace(30),
                    const SignUpForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
