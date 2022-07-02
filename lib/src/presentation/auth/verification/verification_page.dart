import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/common/image_resources.dart';
import 'package:jini/di/injection.dart';
import 'package:jini/src/application/auth/auth_bloc.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/routes/j_router.dart';

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
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        state.maybeMap(
          verified: (_) {
            timer?.cancel();
            Get.offNamed(JRoutes.donorRequirements);
          },
          orElse: () {
            timer = Timer.periodic(const Duration(seconds: 3), (_) {
              print('object');
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
                        onPressed: () {},
                      ),
                      20.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Resend Email'),
                            style: TextButton.styleFrom(
                              textStyle: GoogleFonts.spaceGrotesk(
                                fontSize: 14.sp,
                                color: AppColors.swatch.shade900,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                            style: TextButton.styleFrom(
                              textStyle: GoogleFonts.spaceGrotesk(
                                fontSize: 14.sp,
                                color: AppColors.swatch.shade900,
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
