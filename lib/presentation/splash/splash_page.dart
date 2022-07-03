import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/routes/j_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);

    return BlocListener<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        Future.delayed(const Duration(seconds: 5)).then((_) {
          state.maybeMap(
            orElse: () => null,
            authenticated: (_) => Get.offAllNamed(JRoutes.layout),
            verified: (_) => Get.offAllNamed(JRoutes.layout),
            unauthenticated: (_) => Get.offAllNamed(JRoutes.signIn),
            unverified: (_) => Get.offAllNamed(JRoutes.verification),
          );
        });
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColorDark,
        body: Container(
          height: 1.sh,
          width: 1.sw,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.6,
                child: Image.asset(ImageResources.background),
              ),
              Image.asset(ImageResources.logo, width: 0.45.sw),
            ],
          ),
        ),
      ),
    );
  }
}
