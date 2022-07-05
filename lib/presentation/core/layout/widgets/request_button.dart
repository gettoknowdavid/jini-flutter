import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/core/bottom_nav/bottom_nav_cubit.dart';

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
        borderRadius: BorderRadius.circular(18).r,
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
