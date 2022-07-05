import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({Key? key, required this.item}) : super(key: key);

  final BottomNavItem item;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BottomNavCubit>(context);
    final index = bloc.items.indexOf(item);
    final isCurrent = bloc.currentIndex == index;
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: isCurrent ? 60.w : 54.w,
      width: isCurrent ? 60.w : 54.w,
      child: Icon(item.icon, color: Colors.white),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18).r,
        border: Border.all(),
        boxShadow: [
          BoxShadow(
            color: theme.primaryColor.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 12,
            offset: Offset(0.w, 5.h),
          ),
        ],
        gradient: LinearGradient(
          colors: [Color(0xffff78a9), Color(0xffdf1b49)],
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
