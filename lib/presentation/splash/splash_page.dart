import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/widgets/j_background.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/presentation/core/widgets/j_dialogs.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        Future.delayed(const Duration(seconds: 5)).then((_) {
          state.mapOrNull(
            profileNotCompleted: (_) =>
                Get.dialog(JDialogs.editProfile, barrierDismissible: false),
            authenticated: (_) => Get.offAllNamed(JRoutes.layout),
            verified: (_) => Get.offAllNamed(JRoutes.layout),
            unauthenticated: (_) => Get.offAllNamed(JRoutes.signIn),
            unverified: (_) => Get.offAllNamed(JRoutes.verification),
          );
        });
      },
      child: Scaffold(
        body: Container(
          height: 1.sh,
          width: 1.sw,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const JBackground(forSplashScreen: true),
              Image.asset(ImageResources.logo, width: 0.45.sw),
            ],
          ),
        ),
      ),
    );
  }
}
