// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../application/auth/auth_bloc.dart' as _i17;
import '../application/auth/forgot_password/forgot_password_bloc.dart' as _i18;
import '../application/auth/sign_in/sign_in_bloc.dart' as _i15;
import '../application/auth/sign_up/sign_up_bloc.dart' as _i16;
import '../application/core/bottom_nav/bottom_nav_cubit.dart' as _i3;
import '../application/core/settings/settings_bloc.dart' as _i21;
import '../application/profile/profile_bloc.dart' as _i12;
import '../domain/auth/i_auth_facade.dart' as _i7;
import '../domain/mail/i_mail_facade.dart' as _i9;
import '../domain/settings/i_settings_facade.dart' as _i19;
import '../infrastructure/auth/firebase_auth_facade.dart' as _i8;
import '../infrastructure/auth/firebase_user_mapper.dart' as _i6;
import '../infrastructure/core/firebase_injectable_module.dart' as _i22;
import '../infrastructure/mail/open_mail_app_facade.dart' as _i10;
import '../infrastructure/settings/settings_facade.dart' as _i20;
import '../infrastructure/settings/settings_mapper.dart' as _i13;
import 'register_module.dart' as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(), get<_i6.FirebaseUserMapper>()));
  gh.lazySingleton<_i9.IMailFacade>(() => _i10.OpenMailAppFacade());
  gh.lazySingleton<_i11.InternetConnectionChecker>(
      () => registerModule.connection);
  gh.factory<_i12.ProfileBloc>(() => _i12.ProfileBloc());
  gh.lazySingleton<_i13.SettingsMapper>(() => _i13.SettingsMapper());
  await gh.lazySingletonAsync<_i14.SharedPreferences>(
      () => registerModule.getPreferences,
      preResolve: true);
  gh.factory<_i15.SignInBloc>(() => _i15.SignInBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i16.SignUpBloc>(() => _i16.SignUpBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i17.AuthBloc>(
      () => _i17.AuthBloc(get<_i7.IAuthFacade>(), get<_i9.IMailFacade>()));
  gh.factory<_i18.ForgotPasswordBloc>(
      () => _i18.ForgotPasswordBloc(get<_i7.IAuthFacade>()));
  gh.lazySingleton<_i19.ISettingsFacade>(() => _i20.SettingsFacade(
      get<_i14.SharedPreferences>(), get<_i13.SettingsMapper>()));
  gh.factory<_i21.SettingsBloc>(
      () => _i21.SettingsBloc(get<_i19.ISettingsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}

class _$RegisterModule extends _i23.RegisterModule {}
