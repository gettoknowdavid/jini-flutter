import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/theme/theme_cubit.dart';
import 'package:jini/presentation/auth/sign_in/widgets/sign_in_form.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
                    style: textTheme.headlineLarge,
                  ),
                  4.verticalSpace,
                  Text(
                    'Welcome back. You have been missed. \nPlease, sign into your account.',
                    style: textTheme.titleMedium,
                  ),
                  30.verticalSpace,
                  SignInForm(),
                  16.verticalSpace,
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
