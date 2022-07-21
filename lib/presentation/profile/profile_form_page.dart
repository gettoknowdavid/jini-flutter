import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_dialogs.dart';
import 'package:jini/presentation/core/widgets/j_text_form_field.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';
import 'package:jini/presentation/profile/widgets/gender_grid.dart';
import 'package:jini/presentation/profile/widgets/stepper_controls.dart';
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
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
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
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
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



class AvatarField extends StatelessWidget {
  const AvatarField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listenWhen: (p, c) => p.saveOption != c.saveOption,
      listener: (context, state) {
        state.saveOption.fold(
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
          p.saveOption != c.saveOption || p.user.phone != c.user.phone,
      listener: (context, state) {
        state.saveOption.fold(
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

class _StepTitle extends StatelessWidget {
  const _StepTitle(this.value, {Key? key}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class ProfileFormPage extends StatefulWidget {
  const ProfileFormPage({Key? key}) : super(key: key);

  @override
  State<ProfileFormPage> createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
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
        title: const _StepTitle('What\'s your gender?'),
        content: const GenderGrid(),
      ),
      Step(
        isActive: _index >= 1,
        state: _index <= 1 ? StepState.complete : StepState.indexed,
        title: const _StepTitle('How old are you?'),
        content: const DateOfBirthField(),
      ),
      Step(
        isActive: _index >= 2,
        state: _index <= 2 ? StepState.complete : StepState.indexed,
        title: const _StepTitle('What\'s your phone number?'),
        content: const PhoneField(),
      ),
      Step(
        isActive: _index >= 3,
        state: _index <= 3 ? StepState.complete : StepState.indexed,
        title: const _StepTitle('What\'s your blood group?'),
        content: const BloodGroupGrid(),
      ),
      Step(
        isActive: _index == 4,
        state: StepState.complete,
        title: const _StepTitle('Set your profile picture?'),
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
                    steps: _steps,
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
                        JDialogs.profileCompleteDialog();
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
