import 'package:get/get.dart';
import 'package:jini/presentation/auth/check_email/check_email_page.dart';
import 'package:jini/presentation/auth/forgot_password/forgot_password_page.dart';
import 'package:jini/presentation/auth/sign_in/sign_in_page.dart';
import 'package:jini/presentation/auth/sign_up/sign_up_page.dart';
import 'package:jini/presentation/auth/verification/verification_page.dart';
import 'package:jini/presentation/core/layout/j_layout.dart';
import 'package:jini/presentation/donor_requirements/donor_requirements_page.dart';
import 'package:jini/presentation/event/event_page.dart';
import 'package:jini/presentation/home/home_page.dart';
import 'package:jini/presentation/profile/profile_page.dart';
import 'package:jini/presentation/request/create_request_page.dart';
import 'package:jini/presentation/splash/splash_page.dart';

class JRoutes {
  JRoutes._();

  static final String splash = "/";
  static final String signIn = "/signIn";
  static final String signUp = "/signUp";
  static final String layout = "/layout";
  static final String verification = "/verification";
  static final String donorReq = "/donorRequirements";
  static final String forgotPassword = "/forgotPassword";
  static final String checkEmail = "/checkEmail";
  static final String profilePage = "/profile-page";
  static final String createRequestPage = "/create-request-page";
  static final String eventPage = "/event-page";
  static final String homePage = "/home-page";

  static final List<GetPage<dynamic>>? pages = <GetPage<dynamic>>[
    GetPage(name: JRoutes.splash, page: () => SplashPage()),
    GetPage(name: JRoutes.layout, page: () => JLayout()),
    GetPage(name: JRoutes.signIn, page: () => SignInPage()),
    GetPage(name: JRoutes.signUp, page: () => SignUpPage()),
    GetPage(name: JRoutes.verification, page: () => VerificationPage()),
    GetPage(name: JRoutes.donorReq, page: () => DonorRequirementsPage()),
    GetPage(name: JRoutes.forgotPassword, page: () => ForgotPasswordPage()),
    GetPage(name: JRoutes.checkEmail, page: () => CheckEmailPage()),
    GetPage(name: JRoutes.homePage, page: () => HomePage()),
    GetPage(name: JRoutes.createRequestPage, page: () => CreateRequestPage()),
    GetPage(name: JRoutes.profilePage, page: () => ProfilePage()),
    GetPage(name: JRoutes.eventPage, page: () => EventPage()),
  ];
}
