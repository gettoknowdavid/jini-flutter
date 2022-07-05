import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';

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
                borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
                gradient: LinearGradient(
                  colors: [Color(0xffff78a9), Color(0xffdf1b49)],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
