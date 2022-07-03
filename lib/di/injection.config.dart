// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../src/application/auth/auth_bloc.dart' as _i18;
import '../src/application/auth/forgot_password/forgot_password_bloc.dart'
    as _i19;
import '../src/application/auth/sign_in/sign_in_bloc.dart' as _i15;
import '../src/application/auth/sign_up/sign_up_bloc.dart' as _i16;
import '../src/application/auth/verification/verification_cubit.dart' as _i17;
import '../src/application/core/bottom_nav/bottom_nav_cubit.dart' as _i3;
import '../src/application/profile/profile_bloc.dart' as _i11;
import '../src/domain/auth/i_auth_facade.dart' as _i13;
import '../src/domain/mail/i_mail_facade.dart' as _i7;
import '../src/infrastructure/auth/firebase_auth_facade.dart' as _i14;
import '../src/infrastructure/auth/firebase_user_mapper.dart' as _i6;
import '../src/infrastructure/auth/j_user_dtos.dart' as _i10;
import '../src/infrastructure/core/firebase_injectable_module.dart' as _i20;
import '../src/infrastructure/mail/open_mail_app_facade.dart' as _i8;
import 'register_module.dart' as _i21; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IMailFacade>(() => _i8.OpenMailAppFacade());
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => registerModule.connection);
  gh.factory<_i10.JUserDtoCollectionReference>(
      () => firebaseInjectableModule.jUserReference);
  gh.factory<_i11.ProfileBloc>(() => _i11.ProfileBloc());
  await gh.lazySingletonAsync<_i12.SharedPreferences>(
      () => registerModule.getPreferences,
      preResolve: true);
  gh.lazySingleton<_i13.IAuthFacade>(() => _i14.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i6.FirebaseUserMapper>(),
      get<_i10.JUserDtoCollectionReference>()));
  gh.factory<_i15.SignInBloc>(() => _i15.SignInBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i16.SignUpBloc>(() => _i16.SignUpBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i17.VerificationCubit>(() =>
      _i17.VerificationCubit(get<_i7.IMailFacade>(), get<_i13.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(
      () => _i18.AuthBloc(get<_i13.IAuthFacade>(), get<_i7.IMailFacade>()));
  gh.factory<_i19.ForgotPasswordBloc>(
      () => _i19.ForgotPasswordBloc(get<_i13.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}

class _$RegisterModule extends _i21.RegisterModule {}
