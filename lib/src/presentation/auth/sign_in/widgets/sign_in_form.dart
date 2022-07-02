import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/application/auth/auth_bloc.dart';
import 'package:jini/src/application/auth/sign_in/sign_in_bloc.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';
import 'package:jini/src/presentation/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (f) {
              Get.snackbar(
                'Authentication Failure',
                f.maybeMap(
                  orElse: () => '',
                  serverError: (_) => 'Looks like there\'s a server error.',
                  invalidEmailOrPassword: (_) => 'Invalid email or password.',
                ),
                icon: Icon(PhosphorIcons.warningCircleBold),
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: AppColors.primary,
              );
            },
            (_) {
              Get.offAllNamed(JRoutes.layout);
              authBloc.add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              JTextFormField(
                hint: 'Email address',
                enabled: !bloc.state.isSubmitting,
                keyboardType: TextInputType.emailAddress,
                onChanged: (e) => bloc.add(SignInEvent.emailChanged(e)),
                validator: (_) => bloc.state.email.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid Email',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              14.verticalSpace,
              JTextFormField(
                hint: 'Password',
                enabled: !bloc.state.isSubmitting,
                isPassword: true,
                onChanged: (p) => bloc.add(SignInEvent.passwordChanged(p)),
                validator: (_) => bloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    empty: (_) => 'Password cannot be empty',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              16.verticalSpace,
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              40.verticalSpace,
              JButton(
                title: 'Sign In',
                loading: bloc.state.isSubmitting,
                indicatorColor: AppColors.primary,
                onPressed: !bloc.state.isSubmitting
                    ? () => bloc.add(SignInEvent.signInPressed())
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
