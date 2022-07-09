import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/core/widgets/j_background.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_snackbars.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final bloc = BlocProvider.of<ForgotPasswordBloc>(context);

    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      bloc: bloc,
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (f) {
              JSnackbars.errorSnackbar(
                title: 'Error',
                message: f.maybeMap(
                  orElse: () => '',
                  serverError: (_) => JErrorMessages.serverError,
                  userNotFound: (_) => JErrorMessages.usrNotFound,
                ),
              );
            },
            (_) => Get.toNamed(JRoutes.checkEmail),
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
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
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Forgot \nPassword?',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        JScreenUtil.vSpace(10),
                        Text(
                          "Don't worry! It happens. " +
                              "\nWe just need the address linked with your account.",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        JScreenUtil.vSpace(20),
                        Image.asset(ImageResources.forgotPassword),
                        JScreenUtil.vSpace(20),
                        JTextFormField(
                          label: 'Email address',
                          hint: 'johndoe@example.com',
                          enabled: !bloc.state.isSubmitting,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (e) {
                            bloc.add(ForgotPasswordEvent.emailChanged(e));
                          },
                          validator: (_) => bloc.state.email.value.fold(
                            (f) => f.mapOrNull(
                              invalidEmail: (_) => JErrorMessages.invalidEmail,
                              empty: (_) => JErrorMessages.emailRequired,
                            ),
                            (_) => null,
                          ),
                        ),
                        JScreenUtil.vSpace(30),
                        JButton(
                          title: 'Submit',
                          loading: bloc.state.isSubmitting,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              bloc.add(ForgotPasswordEvent.submitPressed());
                            }
                          },
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
