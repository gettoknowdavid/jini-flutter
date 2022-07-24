import 'package:flutter/material.dart';
import 'package:jini/presentation/auth/check_email/check_email_page.dart';
import 'package:jini/presentation/auth/forgot_password/forgot_password_page.dart';
import 'package:jini/presentation/auth/sign_in/sign_in_page.dart';
import 'package:jini/presentation/auth/sign_up/sign_up_page.dart';
import 'package:jini/presentation/auth/verification/verification_page.dart';
import 'package:jini/presentation/core/layout/j_layout.dart';
import 'package:jini/presentation/event/event_page.dart';
import 'package:jini/presentation/home/home_page.dart';
import 'package:jini/presentation/map/map_page.dart';
import 'package:jini/presentation/profile/profile_form_page.dart';
import 'package:jini/presentation/profile/profile_page.dart';
import 'package:jini/presentation/request/create_request_page.dart';
import 'package:jini/presentation/splash/splash_page.dart';

class JRouter {
  static final key = GlobalKey<NavigatorState>();

  static const String splash = "/";
  static const String signIn = "/signIn";
  static const String signUp = "/signUp";
  static const String layout = "/layout";
  static const String verification = "/verification";
  static const String forgotPassword = "/forgotPassword";
  static const String checkEmail = "/checkEmail";
  static const String profilePage = "/profile-page";
  static const String createRequestPage = "/create-request-page";
  static const String eventPage = "/event-page";
  static const String homePage = "/home-page";
  static const String profileFormPage = "/profile-form-page";
  static const String mapPage = "/map-page";

  JRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case layout:
        return MaterialPageRoute(builder: (_) => const JLayout());
      case verification:
        return MaterialPageRoute(builder: (_) => const VerificationPage());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      case checkEmail:
        return MaterialPageRoute(builder: (_) => const CheckEmailPage());
      case profilePage:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case createRequestPage:
        return MaterialPageRoute(builder: (_) => const CreateRequestPage());
      case eventPage:
        return MaterialPageRoute(builder: (_) => const EventPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case profileFormPage:
        return MaterialPageRoute(builder: (_) => const ProfileFormPage());
      case mapPage:
        return MaterialPageRoute(builder: (_) => const MapPage());

      default:
        throw FormatException("Route not found");
    }
  }

  static List<Route> generateInitialRoutes(String name) {
    return <Route>[
      MaterialPageRoute(builder: (_) => const SplashPage()),
    ];
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
