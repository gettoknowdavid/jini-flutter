import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ForgotPasswordBloc>(context);
    final theme = Theme.of(context);

    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      bloc: bloc,
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
                  userNotFound: (_) => 'Oops! No user with this email exists.',
                ),
                icon: Icon(PhosphorIcons.warningCircleBold),
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: theme.primaryColor,
                duration: const Duration(seconds: 5),
              );
            },
            (_) => Get.toNamed(JRoutes.checkEmail),
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(leading: const JBackButton()),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.2,
                child: Image.asset(ImageResources.background),
              ),
              Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(18).r,
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Forgot \nPassword?',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1.sp,
                            height: 1.2.sp,
                          ),
                        ),
                        10.verticalSpace,
                        Text(
                          "Don't worry! It happens. " +
                              "\nWe just need the address linked with your account.",
                          style: GoogleFonts.spaceGrotesk(fontSize: 16.sp),
                        ),
                        20.verticalSpace,
                        Image.asset(ImageResources.forgotPassword),
                        20.verticalSpace,
                        JTextFormField(
                          hint: 'Email address',
                          enabled: !bloc.state.isSubmitting,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (e) {
                            bloc.add(ForgotPasswordEvent.emailChanged(e));
                          },
                          validator: (_) => bloc.state.email.value.fold(
                            (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                        ),
                        20.verticalSpace,
                        JButton(
                          title: 'Submit',
                          loading: bloc.state.isSubmitting,
                          indicatorColor: theme.primaryColor,
                          onPressed: !bloc.state.isSubmitting
                              ? () =>
                                  bloc.add(ForgotPasswordEvent.submitPressed())
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
