import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/src/domain/core/blood_group.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/domain/core/user_type.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);

    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () => () {},
          (either) => either.fold(
            (f) {
              Get.snackbar(
                'Sign Up Error',
                f.maybeMap(
                  orElse: () => '',
                  emailInUse: (_) => 'Email is already in use.',
                  serverError: (_) => 'Looks like there\'s a server error.',
                ),
                icon: Icon(PhosphorIcons.warningCircleBold),
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: AppColors.primary,
              );
            },
            (r) => null,
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              JTextFormField(
                hint: 'Name',
                enabled: !bloc.state.isSubmitting,
                onChanged: (e) => bloc.add(SignUpEvent.nameChanged(e)),
                validator: (_) => bloc.state.name.value.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    empty: (_) => 'Name is required',
                  ),
                  (_) => null,
                ),
              ),
              14.verticalSpace,
              JTextFormField(
                hint: 'Email address',
                enabled: !bloc.state.isSubmitting,
                keyboardType: TextInputType.emailAddress,
                onChanged: (e) => bloc.add(SignUpEvent.emailChanged(e)),
                validator: (_) => bloc.state.email.value.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    invalidEmail: (_) => 'Invalid Email',
                  ),
                  (_) => null,
                ),
              ),
              14.verticalSpace,
              JTextFormField(
                hint: 'Password',
                enabled: !bloc.state.isSubmitting,
                isPassword: true,
                onChanged: (e) => bloc.add(SignUpEvent.passwordChanged(e)),
                validator: (_) => bloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    invalidPassword: (_) =>
                        'Must contain at least 8 characters, one uppercase letter, one digit & one special character.',
                  ),
                  (_) => null,
                ),
              ),
              14.verticalSpace,
              DropdownButtonHideUnderline(
                child: DropdownButton2<Gender>(
                  hint: Text('Gender'),
                  value: state.bloodGroup.getOrCrash(),
                  buttonHeight: 65.h,
                  onChanged: (e) {
                    bloc.add(SignUpEvent.bloodGroupChanged(e!));
                  },
                  buttonPadding: EdgeInsets.fromLTRB(18, 10, 18, 10).r,
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: Colors.white24,
                    border: Border(bottom: BorderSide.none),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: AppColors.primary,
                  ),
                  items: Gender.values.map((bloodGroup) {
                    return DropdownMenuItem<Gender>(
                      value: bloodGroup,
                      child: Text(bloodGroup.value),
                    );
                  }).toList(),
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              14.verticalSpace,
              DropdownButtonHideUnderline(
                child: DropdownButton2<BloodGroup>(
                  hint: Text('Blood Group'),
                  value: state.bloodGroup.getOrCrash(),
                  buttonHeight: 65.h,
                  onChanged: (e) {
                    bloc.add(SignUpEvent.bloodGroupChanged(e!));
                  },
                  buttonPadding: EdgeInsets.fromLTRB(18, 10, 18, 10).r,
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: Colors.white24,
                    border: Border(bottom: BorderSide.none),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: AppColors.primary,
                  ),
                  items: BloodGroup.values.map((bloodGroup) {
                    return DropdownMenuItem<BloodGroup>(
                      value: bloodGroup,
                      child: Text(bloodGroup.value),
                    );
                  }).toList(),
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              14.verticalSpace,
              DropdownButtonHideUnderline(
                child: DropdownButton2<UserType>(
                  hint: Text('Register as a...'),
                  value: state.userType.getOrCrash(),
                  onChanged: (e) {
                    bloc.add(SignUpEvent.userTypeChanged(e!));
                  },
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
              40.verticalSpace,
              JButton(
                title: 'Sign Up',
                loading: bloc.state.isSubmitting,
                indicatorColor: AppColors.primary,
                onPressed: !bloc.state.isSubmitting
                    ? () => bloc.add(SignUpEvent.signUpPressed())
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
