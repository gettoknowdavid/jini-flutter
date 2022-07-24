import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileBloc = BlocProvider.of<ProfileBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (p, c) => p != c,
      listener: (context, state) {
        Future.delayed(const Duration(seconds: 5), () {
          state.mapOrNull(
            profileNotCompleted: (_) => Navigator.pushReplacementNamed(
              context,
              JRouter.profileFormPage,
            ),
            authenticated: (_) {
              profileBloc.add(const ProfileEvent.initialized());
              Navigator.pushReplacementNamed(context, JRouter.layout);
            },
            unauthenticated: (_) => Navigator.pushReplacementNamed(
              context,
              JRouter.signIn,
            ),
            unverified: (_) => Navigator.pushReplacementNamed(
              context,
              JRouter.verification,
            ),
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
