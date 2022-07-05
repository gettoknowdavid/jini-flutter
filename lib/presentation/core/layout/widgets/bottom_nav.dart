import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BottomNavCubit>(context);

    return BlocBuilder<BottomNavCubit, Widget>(
      builder: (context, state) {
        final itemsLength = bloc.items.length;

        return Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: bloc.currentIndex,
            onTap: bloc.setView,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            backgroundColor: Colors.transparent,
            items: [
              for (var i = 0; i < itemsLength; i++)
                BottomNavigationBarItem(
                  backgroundColor: Colors.grey[100],
                  label: bloc.items[i].title,
                  icon: i == 1
                      ? RequestButton(item: bloc.items[i])
                      : BottomNavButton(item: bloc.items[i]),
                )
            ],
          ),
        );
      },
    );
  }
}

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({Key? key, required this.item}) : super(key: key);

  final BottomNavItem item;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BottomNavCubit>(context);
    final index = bloc.items.indexOf(item);

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Icon(item.icon),
        Positioned(
          bottom: -14.h,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 350),
            opacity: bloc.currentIndex == index ? 1.0 : 0.0,
            child: Container(
              height: 3.h,
              width: 30.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(19.r)),
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RequestButton extends StatelessWidget {
  const RequestButton({Key? key, required this.item}) : super(key: key);

  final BottomNavItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 60.w,
      width: 60.w,
      child: Icon(item.icon, color: Colors.white),
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(20).r,
        boxShadow: [
          BoxShadow(
            color: theme.primaryColor.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 12,
            offset: Offset(0.w, 5.h),
          ),
        ],
      ),
    );
  }
}
