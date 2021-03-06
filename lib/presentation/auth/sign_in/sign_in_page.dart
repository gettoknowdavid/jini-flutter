import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jini/presentation/auth/sign_in/widgets/sign_in_form.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_background.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';
import 'package:jini/presentation/core/routes/j_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          const JThemeSwitch(),
        ],
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
                        onPressed: () => Get.toNamed(JRoutes.signUp),
                        child: Text('Sign Up'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
