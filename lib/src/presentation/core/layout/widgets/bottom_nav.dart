import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/application/core/bottom_nav/bottom_nav_cubit.dart';

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
                  icon: i == 2
                      ? Container(
                          height: 50.w,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20).r,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 12,
                                offset: Offset(0.w, 5.h),
                              ),
                            ],
                          ),
                          child: Icon(bloc.items[i].icon),
                        )
                      : Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Icon(bloc.items[i].icon),
                            Positioned(
                              bottom: -14.h,
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 350),
                                opacity: bloc.currentIndex == i ? 1.0 : 0.0,
                                child: Container(
                                  height: 3.h,
                                  width: 30.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(19.r),
                                    ),
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                )
            ],
          ),
        );
      },
    );
  }
}
