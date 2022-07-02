import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/route_manager.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/common/image_resources.dart';
import 'package:jini/src/application/auth/auth_bloc.dart';
import 'package:jini/src/presentation/routes/j_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {},
      child: Scaffold(
        backgroundColor: AppColors.primaryDark,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.6,
              child: Image.asset(ImageResources.background, width: 1.sw),
            ),
            Image.asset(
              ImageResources.logo,
              width: 0.45.sw,
            ),
          ],
        ),
      ),
    );
  }
}
