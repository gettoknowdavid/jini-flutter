import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/presentation/profile/profile_page.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

part 'bottom_nav_state.dart';
part 'bottom_nav_cubit.freezed.dart';

@lazySingleton
class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState.initial());

  int currentIndex = 0;

  void setView(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        emit(
          BottomNavState(
            title: 'Jini App',
            body: const ProfilePage(title: 'Jini App'),
          ),
        );
        break;
      case 1:
        emit(
          BottomNavState(
            title: 'Make Request',
            body: const ProfilePage(title: 'Make Request'),
          ),
        );
        break;
      case 2:
        emit(
          BottomNavState(
            title: 'Events',
            body: const ProfilePage(title: 'Events'),
          ),
        );
        break;
      default:
        emit(
          BottomNavState(
            title: 'Home',
            body: const ProfilePage(title: 'Home'),
          ),
        );
    }
  }

  List<BottomNavItem> items = [
    BottomNavItem(title: 'Jini App', icon: PhosphorIcons.houseSimpleBold),
    BottomNavItem(title: 'Make Request', icon: PhosphorIcons.dropBold),
    BottomNavItem(title: 'Events', icon: PhosphorIcons.calendarBold),
  ];
}

class BottomNavItem {
  final String title;
  final IconData icon;

  BottomNavItem({required this.title, required this.icon});
}
