import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/src/application/auth/auth_bloc.dart';
import 'package:jini/src/application/auth/sign_up/sign_up_bloc.dart';
import 'package:jini/src/domain/core/blood_group.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/presentation/core/j_button.dart';
import 'package:jini/src/presentation/core/j_text_form_field.dart';
import 'package:jini/src/presentation/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);

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
            (r) {
              authBloc.add(const AuthEvent.sendVerifiedEmail());
              Get.offAllNamed(JRoutes.verification);
            },
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
              12.verticalSpace,
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
              12.verticalSpace,
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
              12.verticalSpace,
              JDropdown<Gender>(
                hint: 'Select your gender',
                value: state.gender.getOrCrash(),
                onChanged: (e) {
                  bloc.add(SignUpEvent.genderChanged(e!));
                },
                validator: (_) => bloc.state.gender.value.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    nullValue: (_) => 'Select your gender',
                  ),
                  (_) => null,
                ),
                items: Gender.values.map((gender) {
                  return DropdownMenuItem<Gender>(
                    value: gender,
                    child: Text(gender.value),
                  );
                }).toList(),
              ),
              12.verticalSpace,
              JDropdown<BloodGroup>(
                hint: 'Select your blood group',
                value: state.bloodGroup.getOrCrash(),
                onChanged: (e) {
                  bloc.add(SignUpEvent.bloodGroupChanged(e!));
                },
                validator: (_) => bloc.state.bloodGroup.value.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    nullValue: (_) => 'Select your blood group',
                  ),
                  (_) => null,
                ),
                items: BloodGroup.values.map((bloodGroup) {
                  return DropdownMenuItem<BloodGroup>(
                    value: bloodGroup,
                    child: Text(bloodGroup.value),
                  );
                }).toList(),
              ),
              20.verticalSpace,
              JButton(
                title: 'Sign Up',
                loading: bloc.state.isSubmitting,
                indicatorColor: AppColors.primary,
                // onPressed: () => Get.toNamed(JRoutes.verification),
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

class JDropdown<T> extends StatelessWidget {
  const JDropdown({
    Key? key,
    required this.hint,
    required this.value,
    required this.onChanged,
    required this.items,
    this.validator,
  }) : super(key: key);

  final T? value;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;
  final List<DropdownMenuItem<T>> items;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      borderRadius: BorderRadius.circular(18.r),
      dropdownColor: AppColors.primary,
      hint: Text(hint),
      value: value,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(18, 22, 18, 22).r,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(18.r),
        ),
        fillColor: Colors.white24,
        filled: true,
      ),
      items: items,
      style: GoogleFonts.spaceGrotesk(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
