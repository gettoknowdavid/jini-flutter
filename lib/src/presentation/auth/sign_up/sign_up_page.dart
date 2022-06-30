import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/image_resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/presentation/auth/sign_in/widgets/sign_in_form.dart';
import 'package:jini/src/presentation/auth/sign_up/widgets/sign_up_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    'Create a new Account',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1.sp,
                      height: 1.2.sp,
                    ),
                  ),
                  Text(
                    'Sign up to create your new account.',
                    style: GoogleFonts.spaceGrotesk(
                      color: Colors.white60,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5.sp,
                    ),
                  ),
                  46.verticalSpace,
                  SignUpForm(),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
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
