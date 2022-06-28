import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/src/presentation/core/app.dart';

part 'bottom_nav_state.dart';
part 'bottom_nav_cubit.freezed.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState(view: MyHomePage(title: '')));

  void getNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(BottomNavState(view: MyHomePage(title: 'Home')));
        break;
      case 1:
        emit(BottomNavState(view: MyHomePage(title: 'Add Request')));
        break;
      case 2:
        emit(BottomNavState(view: MyHomePage(title: 'Settings')));
        break;
      default:
        emit(BottomNavState(view: MyHomePage(title: 'Home')));
    }
  }
}
