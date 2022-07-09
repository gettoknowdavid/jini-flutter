import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';
import 'package:jini/presentation/core/layout/widgets/bottom_nav.dart';
import 'package:jini/presentation/core/layout/widgets/j_drawer.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';

class JLayout extends StatelessWidget {
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
            appBar: AppBar(
              title: Text(state.title),
              actions: [
                const JThemeSwitch(),
              ],
            ),
            drawer: JDrawer(),
            body: state.body,
            bottomNavigationBar: BottomNav(),
          );
        },
      ),
    );
  }
}
