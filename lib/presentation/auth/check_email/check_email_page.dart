import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(leading: const JBackButton()),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(ImageResources.background),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 0).r,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                30.verticalSpace,
                Text(
                  'Check your mail',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1.sp,
                    height: 1.2.sp,
                  ),
                ),
                10.verticalSpace,
                Text(
                  "We have sent the password recovery \ninstructions to your mail.",
                  style: GoogleFonts.spaceGrotesk(fontSize: 16.sp),
                ),
                20.verticalSpace,
                Image.asset(ImageResources.checkMail),
                20.verticalSpace,
                JButton(
                  title: 'Open mail app',
                  onPressed: () => bloc.add(AuthEvent.openMailApp()),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No mail yet? Check your spam filter, or',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        height: 0.sp,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'try another email address',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 14.sp,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () => Get.back(),
                    ),
                  ],
                ),
                30.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
