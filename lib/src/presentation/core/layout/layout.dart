import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/src/application/core/bottom_nav/bottom_nav_cubit.dart';
import 'package:jini/src/presentation/core/layout/widgets/bottom_nav.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, Widget>(
      builder: (context, state) {
        return Scaffold(
          body: state,
          bottomNavigationBar: BottomNav(),
        );
      },
    );
  }
}
