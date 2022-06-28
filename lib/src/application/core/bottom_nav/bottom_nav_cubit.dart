import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/presentation/core/app.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@lazySingleton
class BottomNavCubit extends Cubit<Widget> {
  BottomNavCubit(Widget view) : super(view);

  int currentIndex = 0;

  void setView(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        emit(MyHomePage(title: 'Home'));
        break;
      case 1:
        emit(ProfilePage(title: 'Profile'));
        break;
      case 2:
        emit(ProfilePage(title: 'Make Requet'));
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

  List<BottomNavItem> navItems = [
    BottomNavItem(title: 'Home', icon: PhosphorIcons.houseSimple),
    BottomNavItem(title: 'Profile', icon: PhosphorIcons.user),
    BottomNavItem(title: 'Make Request', icon: PhosphorIcons.drop),
    BottomNavItem(title: 'Events', icon: PhosphorIcons.calendar),
    BottomNavItem(title: 'About', icon: PhosphorIcons.info),
  ];
}

class BottomNavItem {
  final String title;
  final IconData icon;

  BottomNavItem({required this.title, required this.icon});
}
