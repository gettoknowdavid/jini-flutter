import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/create_request/create_request_bloc.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/common/j_error_messages.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';
import 'package:jini/presentation/core/widgets/j_snackbars.dart';

class CreateRequestPage extends StatelessWidget {
  const CreateRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<CreateRequestBloc>(context);

    return Scaffold(
      body: Center(
        child: BlocConsumer<CreateRequestBloc, CreateRequestState>(
          listenWhen: (c, p) => c.isCreating != p.isCreating,
          listener: (context, state) {
            state.createOption.fold(
              () => {},
              (either) => either.fold(
                (f) {
                  JSnackbars.errorSnackbar(
                    title: 'Create Request Error',
                    message: f.maybeMap(
                      orElse: () => '',
                      serverError: (_) => JErrorMessages.serverError,
                      alreadyExists: (_) => JErrorMessages.requestAlreadyExists,
                    ),
                  );
                },
                (_) {
                  JSnackbars.closeAll;
                  JSnackbars.successSnackbar(
                    title: 'Success!',
                    message: 'Congratulations, your request has been created!',
                  );
                },
              ),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: JScreenUtil.padSymmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: JScreenUtil.padOnly(top: 20),
                    height: JScreenUtil.sh(0.3),
                    width: JScreenUtil.sw(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(JScreenUtil.r(40)),
                      ),
                    ),
                    child: Image.asset(ImageResources.bloodDonation),
                  ),
                  const Spacer(),
                  Text(
                    'Select Blood group',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: JScreenUtil.r(22),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  JScreenUtil.vSpace(14),
                  GridView.builder(
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
                      final _cBg = bloc.state.bloodGroup.getOrCrash();
                      final selected = _cBg == null ? false : _bg == _cBg;

                      return Parent(
                        gesture: Gestures()
                          ..onTap(() => bloc
                              .add(CreateRequestEvent.bloodGroupSelected(_bg))),
                        style: JWidgetStyles.selectItemsStyles(selected, theme),
                        child: Text(
                          _bg.value,
                          style: textTheme.titleMedium?.copyWith(
                            color: selected
                                ? Colors.white
                                : textTheme.bodyLarge?.color,
                          ),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  JButton(
                    onPressed: () =>
                        bloc.add(CreateRequestEvent.createPressed()),
                    title: 'Create Request',
                    loading: bloc.state.isCreating,
                  ),
                  JScreenUtil.vSpace(10),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
