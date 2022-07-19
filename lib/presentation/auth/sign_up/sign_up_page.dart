import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/presentation/auth/sign_up/widgets/sign_up_form.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<SignUpBloc>(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      bloc: bloc,
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return JPage(
          loading: bloc.state.isSubmitting,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: const JBackButton(),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: JScreenUtil.globalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Create a new Account',
                    style: textTheme.headlineLarge,
                  ),
                  JScreenUtil.vSpace(4),
                  Text(
                    'Sign up to create your new account.',
                    style: textTheme.titleMedium,
                  ),
                  JScreenUtil.vSpace(30),
                  const SignUpForm(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
