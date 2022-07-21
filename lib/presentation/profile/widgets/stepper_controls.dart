import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
