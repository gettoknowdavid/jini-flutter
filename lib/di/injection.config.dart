// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../src/application/auth/auth_bloc.dart' as _i15;
import '../src/application/auth/sign_in/sign_in_bloc.dart' as _i13;
import '../src/application/auth/sign_up/sign_up_bloc.dart' as _i14;
import '../src/application/core/bottom_nav/bottom_nav_cubit.dart' as _i3;
import '../src/application/profile/profile_bloc.dart' as _i9;
import '../src/domain/auth/i_auth_facade.dart' as _i11;
import '../src/infrastructure/auth/firebase_auth_facade.dart' as _i12;
import '../src/infrastructure/auth/firebase_user_mapper.dart' as _i6;
import '../src/infrastructure/auth/j_user_dtos.dart' as _i8;
import '../src/infrastructure/core/firebase_injectable_module.dart' as _i16;
import 'register_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BottomNavCubit>(() => _i3.BottomNavCubit());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseUserMapper>(() => _i6.FirebaseUserMapper());
  gh.lazySingleton<_i7.InternetConnectionChecker>(
      () => registerModule.connection);
  gh.factory<_i8.JUserDtoCollectionReference>(
      () => firebaseInjectableModule.jUserReference);
  gh.factory<_i9.ProfileBloc>(() => _i9.ProfileBloc());
  await gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => registerModule.getPreferences,
      preResolve: true);
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i6.FirebaseUserMapper>(),
      get<_i8.JUserDtoCollectionReference>()));
  gh.factory<_i13.SignInBloc>(() => _i13.SignInBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i14.SignUpBloc>(() => _i14.SignUpBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i11.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}

class _$RegisterModule extends _i17.RegisterModule {}
