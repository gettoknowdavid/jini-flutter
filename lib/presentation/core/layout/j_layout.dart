import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';
import 'package:jini/presentation/core/layout/widgets/bottom_nav.dart';
import 'package:jini/presentation/core/layout/widgets/j_drawer.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';

class JLayout extends StatelessWidget {
  const JLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return BlocListener<AuthBloc, AuthState>(
      bloc: authBloc,
      listener: (context, authState) {
        authState.mapOrNull(
          profileNotCompleted: (_) => Navigator.pushReplacementNamed(
            context,
            JRouter.profileFormPage,
          ),
          unauthenticated: (_) => Navigator.pushReplacementNamed(
            context,
            JRouter.signIn,
          ),
        );
      },
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
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
