import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/theme/theme_cubit.dart';
import 'package:jini/di/injection.dart';
import 'package:jini/presentation/auth/sign_in/widgets/sign_in_form.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          BlocBuilder<ThemeCubit, ThemeMode>(
            bloc: BlocProvider.of<ThemeCubit>(context),
            builder: (context, state) {
              final Brightness _b = Theme.of(context).brightness;
              final isDark = state == ThemeMode.dark ? true : false;

              return IconButton(
                onPressed: () => context.read<ThemeCubit>().updateTheme(_b),
                icon: Icon(
                  isDark ? PhosphorIcons.sunBold : PhosphorIcons.moonBold,
                  color: isDark ? Colors.white : Colors.black,
                ),
              );
            },
          ),
        ],
      ),
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
                  46.verticalSpace,
                  SignInForm(),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
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
