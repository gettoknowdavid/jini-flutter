import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';
import 'package:jini/presentation/core/layout/widgets/bottom_nav.dart';
import 'package:jini/presentation/core/layout/widgets/j_drawer.dart';
import 'package:jini/presentation/routes/j_router.dart';

class JLayout extends StatefulWidget {
  const JLayout({Key? key}) : super(key: key);

  @override
  State<JLayout> createState() => _JLayoutState();
}

class _JLayoutState extends State<JLayout> {
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
      listener: (context, authState) {
        authState.maybeMap(
          orElse: () => null,
          initial: (_) {},
          authenticated: (_) => Get.offNamed(JRoutes.layout),
          unauthenticated: (_) => Get.offAllNamed(JRoutes.signIn),
        );
      },
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(state.title)),
            drawer: JDrawer(),
            body: state.body,
            bottomNavigationBar: BottomNav(),
          );
        },
      ),
    );
  }
}
