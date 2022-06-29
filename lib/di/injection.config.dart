// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../features/auth/domain/repositories/auth_repository.dart' as _i13;
import '../features/auth/domain/usecases/sign_in_use_case.dart' as _i12;
import '../features/auth/domain/usecases/sign_out_use_case.dart' as _i14;
import '../features/auth/domain/usecases/sign_up_use_case.dart' as _i16;
import '../src/application/auth/auth_bloc.dart' as _i3;
import '../src/application/auth/sign_in/sign_in_bloc.dart' as _i11;
import '../src/application/auth/sign_up/sign_up_bloc.dart' as _i15;
import '../src/application/core/bottom_nav/bottom_nav_cubit.dart' as _i4;
import '../src/domain/auth/i_auth_facade.dart' as _i7;
import '../src/infrastructure/auth/firebase_auth_facade.dart' as _i8;
import '../src/infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'register_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.lazySingleton<_i4.BottomNavCubit>(() => _i4.BottomNavCubit());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.FirebaseAuthFacade(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => registerModule.connection);
  await gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => registerModule.getPreferences,
      preResolve: true);
  gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc(get<_i7.IAuthFacade>()));
  gh.lazySingleton<_i12.SignInUseCase>(
      () => _i12.SignInUseCase(get<_i13.AuthRepository>()));
  gh.lazySingleton<_i14.SignOutUseCase>(
      () => _i14.SignOutUseCase(get<_i13.AuthRepository>()));
  gh.factory<_i15.SignUpBloc>(() => _i15.SignUpBloc(get<_i7.IAuthFacade>()));
  gh.lazySingleton<_i16.SignUpUseCase>(
      () => _i16.SignUpUseCase(get<_i13.AuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}

class _$RegisterModule extends _i18.RegisterModule {}
