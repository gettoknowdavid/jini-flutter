import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/di/injection.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<AuthBloc>(context);

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          verified: (_) {
            timer?.cancel();
            Navigator.pushReplacementNamed(context, JRouter.profileFormPage);
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
        return JPage(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                JScreenUtil.vSpace(10),
                Image.asset(ImageResources.verifyEmail),
                JScreenUtil.vSpace(18),
                JButton(
                  title: 'Open email app',
                  onPressed: () => bloc.add(AuthEvent.openMailApp()),
                ),
                JScreenUtil.vSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        bloc.add(AuthEvent.sendVerifiedEmail());
                      },
                      child: const Text('Resend Email'),
                      style: TextButton.styleFrom(
                        textStyle: textTheme.titleSmall,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        bloc.add(AuthEvent.authSignedOut());
                      },
                      child: const Text('Cancel'),
                      style: TextButton.styleFrom(
                        textStyle: textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    getIt<AuthBloc>().add(const AuthEvent.authCheckVerified());
    super.initState();
  }
}
