import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/presentation/profile/profile_page.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@lazySingleton
class BottomNavCubit extends Cubit<Widget> {
  BottomNavCubit() : super(ProfilePage(title: 'Home'));

  int currentIndex = 0;

  void setView(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        emit(ProfilePage(title: 'Home'));
        break;
      case 1:
        emit(ProfilePage(title: 'Profile'));
        break;
      case 2:
        emit(ProfilePage(title: 'Make Request'));
        break;
      case 3:
        emit(ProfilePage(title: 'Events'));
        break;
      case 4:
        emit(ProfilePage(title: 'About'));
        break;
      default:
        emit(ProfilePage(title: 'Home'));
    }
  }

  List<BottomNavItem> items = [
    BottomNavItem(title: 'Home', icon: PhosphorIcons.houseSimpleBold),
    BottomNavItem(title: 'Profile', icon: PhosphorIcons.userBold),
    BottomNavItem(title: 'Make Request', icon: PhosphorIcons.dropBold),
    BottomNavItem(title: 'Events', icon: PhosphorIcons.calendarBold),
    BottomNavItem(title: 'About', icon: PhosphorIcons.infoBold),
  ];
}

class BottomNavItem {
  final String title;
  final IconData icon;

  BottomNavItem({required this.title, required this.icon});
}
