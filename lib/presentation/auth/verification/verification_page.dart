import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/di/injection.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/routes/j_router.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  Timer? timer;

  @override
  void initState() {
    getIt<AuthBloc>().add(const AuthEvent.authCheckVerified());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          verified: (_) {
            timer?.cancel();
            Get.offNamed(JRoutes.profile);
          },
          unauthenticated: (_) {
            timer = Timer.periodic(const Duration(seconds: 3), (_) {
              bloc.add(const AuthEvent.authCheckVerified());
            });
          },
          awaitingVerified: (_) {
            timer = Timer.periodic(const Duration(seconds: 3), (_) {
              bloc.add(const AuthEvent.authCheckVerified());
            });
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.2,
                child: Image.asset(ImageResources.background),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 18, 0).r,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      10.verticalSpace,
                      Image.asset(ImageResources.verifyEmail),
                      18.verticalSpace,
                      JButton(
                        title: 'Open email app',
                        onPressed: () => bloc.add(AuthEvent.openMailApp()),
                      ),
                      20.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              bloc.add(AuthEvent.sendVerifiedEmail());
                            },
                            child: Text('Resend Email'),
                            style: TextButton.styleFrom(
                              textStyle: GoogleFonts.spaceGrotesk(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () =>
                                bloc.add(AuthEvent.authSignedOut()),
                            child: Text('Cancel'),
                            style: TextButton.styleFrom(
                              textStyle: GoogleFonts.spaceGrotesk(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
