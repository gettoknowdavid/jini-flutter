import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          JTextFormField(
            hint: 'Email address',
            keyboardType: TextInputType.emailAddress,
          ),
          20.verticalSpace,
          JTextFormField(hint: 'Password', isPassword: true),
          16.verticalSpace,
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot Password?',
              textAlign: TextAlign.right,
              style: GoogleFonts.spaceGrotesk(
                color: Colors.white60,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ),
          40.verticalSpace,
          JButton(title: 'Sign In', onPressed: () {}),
        ],
      ),
    );
  }
}
