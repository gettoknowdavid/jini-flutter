import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/src/application/auth/sign_in/sign_in_bloc.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);

    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              JTextFormField(
                hint: 'Email address',
                keyboardType: TextInputType.emailAddress,
                onChanged: (e) => bloc.add(SignInEvent.emailChanged(e)),
                validator: (_) => bloc.state.email.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid Email',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              20.verticalSpace,
              JTextFormField(
                hint: 'Password',
                isPassword: true,
                onChanged: (p) => bloc.add(SignInEvent.passwordChanged(p)),
                validator: (_) => bloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    empty: (_) => 'Cannot be empty',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              16.verticalSpace,
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white60,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              40.verticalSpace,
              JButton(title: 'Sign In', onPressed: () {}),
            ],
          ),
        );
      },
    );
  }
}
