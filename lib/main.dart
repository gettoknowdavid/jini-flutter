import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/di/injection.dart';
import 'package:jini/firebase_options.dart';
import 'package:jini/src/application/auth/auth_bloc.dart';
import 'package:jini/src/application/auth/sign_in/sign_in_bloc.dart';
import 'package:jini/src/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/src/application/core/bottom_nav/bottom_nav_cubit.dart';
import 'package:jini/src/presentation/core/app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await configureInjection(Environment.prod);

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavCubit>(create: (context) => BottomNavCubit()),
        BlocProvider<SignInBloc>(create: (context) => getIt<SignInBloc>()),
        BlocProvider<SignUpBloc>(create: (context) => getIt<SignUpBloc>()),
        BlocProvider<AuthBloc>(create: (context) {
          return getIt<AuthBloc>()..add(AuthEvent.authCheckRequested());
        }),
      ],
      child: JiniApp(),
    ),
  );
}
