// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../features/auth/domain/repositories/auth_repository.dart' as _i6;
import '../features/auth/domain/usecases/sign_in_use_case.dart' as _i5;
import '../features/auth/domain/usecases/sign_out_use_case.dart' as _i7;
import '../features/auth/domain/usecases/sign_up_use_case.dart' as _i8;
import 'register_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.InternetConnectionChecker>(
      () => registerModule.connection);
  await gh.lazySingletonAsync<_i4.SharedPreferences>(
      () => registerModule.getPreferences,
      preResolve: true);
  gh.lazySingleton<_i5.SignInUseCase>(
      () => _i5.SignInUseCase(get<_i6.AuthRepository>()));
  gh.lazySingleton<_i7.SignOutUseCase>(
      () => _i7.SignOutUseCase(get<_i6.AuthRepository>()));
  gh.lazySingleton<_i8.SignUpUseCase>(
      () => _i8.SignUpUseCase(get<_i6.AuthRepository>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
