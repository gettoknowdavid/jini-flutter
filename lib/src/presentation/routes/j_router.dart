// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';
// import 'package:jini/src/presentation/auth/sign_in/sign_in_page.dart';
// import 'package:jini/src/presentation/auth/sign_up/sign_up_page.dart';
// import 'package:jini/src/presentation/core/layout/j_layout.dart';

// part 'j_router.gr.dart';

// @MaterialAutoRouter(
//   routes: <AutoRoute>[
//     AutoRoute(page: SignInPage, initial: true),
//     AutoRoute(page: SignUpPage),
//     AutoRoute(page: JLayout),
//   ],
// )
// @singleton
// class JRouter extends _$JRouter {}


class JRoutes {
  static final String layout = "/";
  static final String signIn = "/signIn";
  static final String signUp = "/signUp";
  static final String splash = "/splash";
}