// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i13;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../application/auth/auth_bloc.dart' as _i18;
import '../application/auth/forgot_password/forgot_password_bloc.dart' as _i19;
import '../application/auth/sign_in/sign_in_bloc.dart' as _i16;
import '../application/auth/sign_up/sign_up_bloc.dart' as _i17;
import '../application/core/bottom_nav/bottom_nav_cubit.dart' as _i3;
import '../application/core/settings/settings_bloc.dart' as _i25;
import '../application/profile/profile_bloc.dart' as _i24;
import '../domain/auth/i_auth_facade.dart' as _i8;
import '../domain/mail/i_mail_facade.dart' as _i10;
import '../domain/media/i_media_facade.dart' as _i20;
import '../domain/settings/i_settings_facade.dart' as _i22;
import '../infrastructure/auth/firebase_auth_facade.dart' as _i9;
import '../infrastructure/auth/firebase_user_mapper.dart' as _i7;
import '../infrastructure/core/firebase_injectable_module.dart' as _i26;
import '../infrastructure/mail/open_mail_app_facade.dart' as _i11;
import '../infrastructure/media/media_facade.dart' as _i21;
import '../infrastructure/settings/settings_facade.dart' as _i23;
import '../infrastructure/settings/settings_mapper.dart' as _i14;
import 'register_module.dart' as _i27; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i7.FirebaseUserMapper>(() => _i7.FirebaseUserMapper());
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(), get<_i7.FirebaseUserMapper>()));
  gh.lazySingleton<_i10.IMailFacade>(() => _i11.OpenMailAppFacade());
  gh.lazySingleton<_i12.ImagePicker>(() => registerModule.imagePicker);
  gh.lazySingleton<_i13.InternetConnectionChecker>(
      () => registerModule.connection);
  gh.lazySingleton<_i14.SettingsMapper>(() => _i14.SettingsMapper());
  await gh.lazySingletonAsync<_i15.SharedPreferences>(
      () => registerModule.getPreferences,
      preResolve: true);
  gh.factory<_i16.SignInBloc>(() => _i16.SignInBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i17.SignUpBloc>(() => _i17.SignUpBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i8.IAuthFacade>(),
      get<_i10.IMailFacade>(), get<_i15.SharedPreferences>()));
  gh.factory<_i19.ForgotPasswordBloc>(
      () => _i19.ForgotPasswordBloc(get<_i8.IAuthFacade>()));
  gh.lazySingleton<_i20.IMediaFacade>(() => _i21.MediaFacade(
      get<_i4.FirebaseAuth>(),
      get<_i6.FirebaseStorage>(),
      get<_i12.ImagePicker>()));
  gh.lazySingleton<_i22.ISettingsFacade>(() => _i23.SettingsFacade(
      get<_i15.SharedPreferences>(), get<_i14.SettingsMapper>()));
  gh.factory<_i24.ProfileBloc>(
      () => _i24.ProfileBloc(get<_i8.IAuthFacade>(), get<_i20.IMediaFacade>()));
  gh.factory<_i25.SettingsBloc>(
      () => _i25.SettingsBloc(get<_i22.ISettingsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}

class _$RegisterModule extends _i27.RegisterModule {}
