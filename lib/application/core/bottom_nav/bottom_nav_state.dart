part of 'bottom_nav_cubit.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    required String title,
    required Widget body,
  }) = _BottomNavState;

  factory BottomNavState.initial() => BottomNavState(
        title: 'Jini App',
        body: const HomePage(),
      );
}
