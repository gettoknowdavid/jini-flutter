import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/common/j_page.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_back_button.dart';
import 'package:jini/presentation/core/widgets/j_button.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bloc = BlocProvider.of<AuthBloc>(context);

    return JPage(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const JBackButton(),
      ),
      child: Padding(
        padding: JScreenUtil.globalPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            JScreenUtil.vSpace(30),
            Text(
              'Check your mail',
              style: textTheme.headlineLarge,
            ),
            JScreenUtil.vSpace(10),
            Text(
              "We have sent the password recovery \ninstructions to your mail.",
              style: textTheme.titleMedium,
            ),
            JScreenUtil.vSpace(20),
            Image.asset(ImageResources.checkMail),
            JScreenUtil.vSpace(20),
            JButton(
              title: 'Open mail app',
              onPressed: () => bloc.add(AuthEvent.openMailApp()),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No mail yet? Check your spam filter, or',
                  textAlign: TextAlign.center,
                  style: textTheme.titleSmall,
                ),
                JScreenUtil.vSpace(6),
                GestureDetector(
                  child: Text(
                    'try another email address',
                    style: textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onTap: () => Get.back(),
                ),
              ],
            ),
            JScreenUtil.vSpace(40)
          ],
        ),
      ),
    );
  }
}
