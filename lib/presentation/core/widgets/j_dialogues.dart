import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:get/get.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';

class JDialogues {
  JDialogues._();

  static const editProfile = const _EditProfileDialog();
}

class _EditProfileDialog extends StatelessWidget {
  const _EditProfileDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Parent(
      style: ParentStyle()
        ..maxHeight(JScreenUtil.sh(0.3))
        ..alignment.center(),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: JScreenUtil.borderRadius),
        child: Padding(
          padding: JScreenUtil.globalPadding,
          child: Column(
            children: [
              Txt(
                'Update Profile',
                style: TxtStyle()
                  ..textColor(textTheme.bodyLarge!.color!)
                  ..fontSize(JScreenUtil.fontSize(22))
                  ..bold(),
              ),
              JScreenUtil.vSpace(10),
              Txt(
                'Your profile is currently not up to date. ' +
                    'Let\'s get your profile updated ' +
                    'with some information about you.',
                style: TxtStyle()
                  ..textAlign.center()
                  ..textColor(textTheme.bodyLarge!.color!)
                  ..fontSize(JScreenUtil.fontSize(16)),
              ),
              const Spacer(),
              Txt(
                'Okay',
                gesture: Gestures()
                  ..onTap(() {
                    Get.offAndToNamed(JRoutes.profilePage, arguments: true);
                  }),
                style: TxtStyle()
                  ..alignment.center()
                  ..background.color(theme.primaryColor)
                  ..borderRadius(all: JScreenUtil.r(8))
                  ..textColor(Colors.white)
                  ..fontSize(JScreenUtil.fontSize(18))
                  ..fontWeight(FontWeight.w600)
                  ..padding(
                    horizontal: JScreenUtil.r(22),
                    vertical: JScreenUtil.r(6),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
