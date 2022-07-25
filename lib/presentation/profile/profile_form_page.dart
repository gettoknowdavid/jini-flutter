import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_dialogs.dart';
import 'package:jini/presentation/core/widgets/j_theme_switch.dart';
import 'package:jini/presentation/profile/widgets/blood_group_grid.dart';
import 'package:jini/presentation/profile/widgets/date_of_birth_field.dart';
import 'package:jini/presentation/profile/widgets/gender_grid.dart';
import 'package:jini/presentation/profile/widgets/phone_field.dart';
import 'package:jini/presentation/profile/widgets/stepper_controls.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
        content: const DateOfBirthField(isInitEdit: true),
      ),
      Step(
        isActive: _index >= 2,
        state: _index <= 2 ? StepState.complete : StepState.indexed,
        title: const _StepTitle('What\'s your phone number?'),
        content: const PhoneField(isInitEdit: true),
      ),
      Step(
        isActive: _index >= 3,
        state: _index <= 3 ? StepState.complete : StepState.indexed,
        title: const _StepTitle('What\'s your blood group?'),
        content: const BloodGroupGrid(isInitEdit: true),
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
                        // bloc.add(const ProfileEvent.initChanged(true));
                        // bloc.add(const ProfileEvent.initialized());
                        JDialogs.profileCompleteDialog(context);
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
