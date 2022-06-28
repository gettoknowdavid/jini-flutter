import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/application/core/bottom_nav/bottom_nav_cubit.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BottomNavCubit>(context);

    return BlocBuilder<BottomNavCubit, Widget>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.fromLTRB(18, 0, 18, 20).r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.pinkAccent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: bloc.currentIndex,
            onTap: bloc.setView,
            elevation: 0,
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            backgroundColor: Colors.transparent,
            items: bloc.navItems.map((BottomNavItem item) {
              return BottomNavigationBarItem(
                backgroundColor: Colors.grey[100],
                label: item.title,
                icon: Icon(item.icon, color: Colors.white),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
