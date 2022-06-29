import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/image_resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void initialization() async {
    await Future.delayed(const Duration(seconds: 5));
    FlutterNativeSplash.remove();
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(opacity: 0.2, child: Image.asset(ImageResources.background)),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome \nBack!',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1.sp,
                      height: 1.2.sp,
                    ),
                  ),
                  Text(
                    'Welcome back. You have been missed. \nPlease, sign into your account.',
                    style: GoogleFonts.spaceGrotesk(
                      color: Colors.white60,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5.sp,
                    ),
                  ),
                  40.verticalSpace,
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
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      4.horizontalSpace,
                      TextButton(
                        onPressed: () {},
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
