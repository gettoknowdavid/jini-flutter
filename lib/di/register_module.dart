import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  Location get location => Location();

  @lazySingleton
  InternetConnectionChecker get connection => InternetConnectionChecker();

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get getPreferences async {
    return await SharedPreferences.getInstance();
  }
}
