import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/image_resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/src/presentation/auth/sign_up/widgets/sign_up_form.dart';
import 'package:jini/src/presentation/core/j_back_button.dart';

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
                  emailInUse: (_) =>
                      'The email you provided is already in use.',
                  serverError: (_) => 'Looks like there\'s a server error.',
                ),
              );
            },
            (r) {},
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const JBackButton(),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.2,
              child: Image.asset(ImageResources.background),
            ),
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 18.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    20.verticalSpace,
                    SignUpForm(),
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
