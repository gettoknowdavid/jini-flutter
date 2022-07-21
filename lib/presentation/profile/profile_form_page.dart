import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BloodGroupGrid extends StatelessWidget {
  const BloodGroupGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.user.bloodGroup != c.user.bloodGroup,
      builder: (context, state) {
        return GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: BloodGroup.values.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: JScreenUtil.sh(0.08),
            crossAxisSpacing: JScreenUtil.r(10),
            mainAxisSpacing: JScreenUtil.r(10),
          ),
          itemBuilder: (context, i) {
            final _bg = BloodGroup.values[i];
            final _cBg = bloc.state.user.bloodGroup;
            final selected = _cBg == null ? false : _bg == _cBg.getOrCrash();

            return Parent(
              gesture: Gestures()
                ..onTap(() => bloc.add(ProfileEvent.bloodGroupChanged(_bg))),
              style: ParentStyle()
                ..alignmentContent.center()
                ..borderRadius(all: JScreenUtil.r(10))
                ..background
                    .color(selected ? theme.primaryColor : theme.disabledColor),
              child: Text(
                _bg.value,
                style: textTheme.titleMedium?.copyWith(
                  color: selected ? Colors.white : textTheme.bodyLarge?.color,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class DateOfBirthField extends StatefulWidget {
  const DateOfBirthField({Key? key}) : super(key: key);

  @override
  State<DateOfBirthField> createState() => _DateOfBirthFieldState();
}

class _DateOfBirthFieldState extends State<DateOfBirthField> {
  TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.user.dob != c.user.dob,
      builder: (context, state) {
        return JTextFormField(
          label: 'Date of birth',
          hint: 'Select date of birth',
          controller: dobController,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: bloc.state.user.dob?.getOrCrash() ?? DateTime.now(),
              firstDate: DateTime(1800),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              final formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
              bloc.add(ProfileEvent.dobChanged(
                  pickedDate, bloc.state.user.userType!.getOrCrash()!));
              setState(() => dobController.text = formattedDate);
            }
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    dobController.dispose();
  }
}

class GenderGrid extends StatelessWidget {
  const GenderGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.user.gender != c.user.gender,
      builder: (context, state) {
        return GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: Gender.values.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: JScreenUtil.sh(0.07),
            crossAxisSpacing: JScreenUtil.r(10),
            mainAxisSpacing: JScreenUtil.r(10),
          ),
          itemBuilder: (context, i) {
            final _gender = Gender.values[i];
            final _cGender = bloc.state.user.gender;
            final selected =
                _cGender == null ? false : _gender == _cGender.getOrCrash();
            return Parent(
              gesture: Gestures()
                ..onTap(() => bloc.add(ProfileEvent.genderChanged(_gender))),
              style: ParentStyle()
                ..alignmentContent.center()
                ..borderRadius(all: JScreenUtil.r(10))
                ..padding(all: JScreenUtil.r(14))
                ..background
                    .color(selected ? theme.primaryColor : theme.disabledColor),
              child: Text(
                _gender.value,
                style: textTheme.bodyLarge?.copyWith(
                  color: selected ? Colors.white : textTheme.bodyLarge?.color,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class AvatarField extends StatelessWidget {
  const AvatarField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.user.avatar != c.user.avatar,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: JScreenUtil.sw(0.125),
              backgroundImage: bloc.state.avatarFile == null
                  ? null
                  : FileImage(bloc.state.avatarFile!),
              child: bloc.state.avatarFile != null
                  ? const SizedBox()
                  : Icon(PhosphorIcons.user),
            ),
            JScreenUtil.hSpace(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    bloc.add(
                      const ProfileEvent.avatarChanged(ImageSource.camera),
                    );
                  },
                  child: const Text('From Camera'),
                ),
                TextButton(
                  onPressed: () {
                    bloc.add(const ProfileEvent.avatarChanged());
                  },
                  child: const Text('From Phone'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _editPhoneFormKey = GlobalKey<FormState>();
    final bloc = BlocProvider.of<ProfileBloc>(context);

    _validate(_) {
      return bloc.state.user.phone!.value.fold(
        (f) => f.mapOrNull(invalidPhone: (_) => JErrorMessages.invalidPhone),
        (_) => null,
      );
    }

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
          p.user.phone != c.user.phone,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold((l) => null, (r) => null),
        );
      },
      buildWhen: (p, c) => p.user.phone != c.user.phone,
      builder: (context, state) {
        return Form(
          key: _editPhoneFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: JTextFormField(
            label: 'Phone',
            hint: 'Add your phone number',
            initialValue: bloc.state.user.phone?.getOrCrash() ?? null,
            enabled: !bloc.state.isSaving,
            keyboardType: TextInputType.phone,
            onChanged: (e) => bloc.add(ProfileEvent.phoneChanged(e)),
            validator: _validate,
          ),
        );
      },
    );
  }
}

class ProfileFormPage extends StatefulWidget {
  const ProfileFormPage({Key? key}) : super(key: key);

  @override
  State<ProfileFormPage> createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  String dobString = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);
    int _index = 0;

    final List<Step> _steps = <Step>[
      Step(
        isActive: _index >= 0,
        state: _index <= 0 ? StepState.complete : StepState.indexed,
        title: Text(
          'What\'s your gender?',
          style: textTheme.titleLarge,
        ),
        content: const GenderGrid(),
      ),
      Step(
        isActive: _index >= 1,
        state: _index <= 1 ? StepState.complete : StepState.indexed,
        title: Text(
          'How old are you?',
          style: textTheme.titleLarge,
        ),
        content: const DateOfBirthField(),
      ),
      Step(
        isActive: _index >= 2,
        state: _index <= 2 ? StepState.complete : StepState.indexed,
        title: Text(
          'What\'s your phone number?',
          style: textTheme.titleLarge,
        ),
        content: const PhoneField(),
      ),
      Step(
        isActive: _index >= 3,
        state: _index <= 3 ? StepState.complete : StepState.indexed,
        title: Text(
          'What\'s your blood group?',
          style: textTheme.titleLarge,
        ),
        content: const BloodGroupGrid(),
      ),
      Step(
        isActive: _index == 4,
        state: StepState.complete,
        title: Text(
          'Set your profile picture?',
          style: textTheme.titleLarge,
        ),
        content: const AvatarField(),
      ),
    ];

    return JPage(
      loading: bloc.state.isSaving,
      appBar: AppBar(
        actions: [
          const JThemeSwitch(),
        ],
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Let\'s know more about you',
                style: textTheme.headlineLarge,
              ),
              BlocConsumer<ProfileBloc, ProfileState>(
                listenWhen: (p, c) => p.activeStepIndex != c.activeStepIndex,
                listener: (context, state) => _index = state.activeStepIndex,
                buildWhen: (p, c) => p.activeStepIndex != c.activeStepIndex,
                builder: (context, state) {
                  return Stepper(
                    currentStep: _index,
                    physics: ScrollPhysics(),
                    onStepTapped: (i) {
                      bloc.add(ProfileEvent.updateStepIndex(i));
                    },
                    onStepContinue: () {
                      if (_index == (_steps.length - 1)) {
                        bloc.add(const ProfileEvent.profileUpdated());
                        bloc.add(const ProfileEvent.initChanged(true));
                        bloc.add(const ProfileEvent.initialized());
                        Get.defaultDialog(
                          title: 'Profile Updated',
                          middleText:
                              'Thank you for telling us more about yourself. ' +
                                  'Click \'Okay\' to view your profile or ' +
                                  'click \'Home\' to go home.',
                          onConfirm: () => Get.offAllNamed(JRoutes.profilePage),
                          onCancel: () => Get.offAllNamed(JRoutes.layout),
                          confirmTextColor: Colors.white,
                          textConfirm: 'Okay',
                          textCancel: 'Home',
                          barrierDismissible: false,
                        );
                      } else {
                        bloc.add(const ProfileEvent.profileUpdated());
                        bloc.add(const ProfileEvent.stepForward());
                      }
                    },
                    onStepCancel: () {
                      bloc.add(ProfileEvent.stepBackward());
                    },
                    controlsBuilder: (context, controls) => StepperControls(
                      controls: controls,
                      isLastStep: _index == (_steps.length - 1),
                    ),
                    steps: _steps,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StepperControls extends StatelessWidget {
  const StepperControls({
    Key? key,
    required this.controls,
    required this.isLastStep,
  }) : super(key: key);

  final ControlsDetails controls;
  final bool isLastStep;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);
    int _index = 0;

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.activeStepIndex != c.activeStepIndex,
      listener: (context, state) => _index = state.activeStepIndex,
      buildWhen: (p, c) => p.activeStepIndex != c.activeStepIndex,
      builder: (context, state) {
        return Container(
          padding: JScreenUtil.padSymmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_index > 0)
                Parent(
                  style: ParentStyle()
                    ..circle()
                    ..alignmentContent.center()
                    ..background.color(theme.primaryColor),
                  child: IconButton(
                    onPressed: controls.onStepCancel,
                    icon: Icon(PhosphorIcons.arrowBendUpLeft),
                  ),
                ),
              JScreenUtil.hSpace(20),
              Parent(
                style: ParentStyle()
                  ..circle()
                  ..alignmentContent.center()
                  ..background.color(theme.primaryColor),
                child: IconButton(
                  onPressed: controls.onStepContinue,
                  icon: Icon(isLastStep
                      ? PhosphorIcons.check
                      : PhosphorIcons.arrowBendUpRight),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
