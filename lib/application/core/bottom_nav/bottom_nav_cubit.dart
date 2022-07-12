import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/presentation/event/event_page.dart';
import 'package:jini/presentation/home/home_page.dart';
import 'package:jini/presentation/request/create_request_page.dart';
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
            title: 'Home',
            body: const HomePage(),
          ),
        );
        break;
      case 1:
        emit(
          BottomNavState(
            title: 'Make Request',
            body: const CreateRequestPage(),
          ),
        );
        break;
      case 2:
        emit(
          BottomNavState(
            title: 'Events',
            body: const EventPage(),
          ),
        );
        break;
      default:
        emit(
          BottomNavState(
            title: 'Home',
            body: const HomePage(),
          ),
        );
    }
  }

  List<BottomNavItem> items = [
    BottomNavItem(title: 'Home', icon: PhosphorIcons.houseSimpleBold),
    BottomNavItem(title: 'Create Request', icon: PhosphorIcons.dropBold),
    BottomNavItem(title: 'Events', icon: PhosphorIcons.calendarBold),
  ];
}

class BottomNavItem {
  final String title;
  final IconData icon;

  BottomNavItem({required this.title, required this.icon});
}
