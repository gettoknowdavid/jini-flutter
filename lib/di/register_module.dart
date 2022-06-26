import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  InternetConnectionChecker get connection => InternetConnectionChecker();

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get getPreferences async {
    return await SharedPreferences.getInstance();
  }
}
