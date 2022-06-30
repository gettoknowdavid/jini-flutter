import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);

    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {},
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
              ),
              20.verticalSpace,
              JTextFormField(
                hint: 'Password',
                enabled: !bloc.state.isSubmitting,
                isPassword: true,
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
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
