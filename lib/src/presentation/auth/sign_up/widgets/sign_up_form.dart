import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/domain/core/user_type.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);

    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              JTextFormField(hint: 'Name'),
              14.verticalSpace,
              JTextFormField(
                hint: 'Email address',
                enabled: !bloc.state.isSubmitting,
                keyboardType: TextInputType.emailAddress,
              ),
              14.verticalSpace,
              JTextFormField(
                hint: 'Password',
                enabled: !bloc.state.isSubmitting,
                isPassword: true,
              ),
              14.verticalSpace,
              Container(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<Gender>(
                    hint: Text('Gender'),
                    value: null,
                    onChanged: (value) {},
                    buttonPadding: EdgeInsets.fromLTRB(18, 10, 18, 10).r,
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: Colors.white24,
                    ),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: AppColors.primary,
                    ),
                    items: Gender.values.map((gender) {
                      return DropdownMenuItem<Gender>(
                        value: gender,
                        child: Text(gender.value),
                      );
                    }).toList(),
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              14.verticalSpace,
              Container(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<UserType>(
                    hint: Text('Register as a...'),
                    value: null,
                    onChanged: (value) {},
                    buttonPadding: EdgeInsets.fromLTRB(18, 10, 18, 10).r,
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: Colors.white24,
                    ),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: AppColors.primary,
                    ),
                    items: UserType.values.map((userType) {
                      return DropdownMenuItem<UserType>(
                        value: userType,
                        child: Text(userType.value),
                      );
                    }).toList(),
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              40.verticalSpace,
              JButton(
                title: 'Sign Up',
                loading: bloc.state.isSubmitting,
                indicatorColor: AppColors.primary,
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
