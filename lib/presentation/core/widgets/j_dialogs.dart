import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:division/division.dart';
import 'package:jini/application/profile/profile_bloc.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';

class JDialogs {
  JDialogs._();

  static noMailAppDialog() async {
    return await showDialog(
      context: JRouter.key.currentContext!,
      builder: (context) {
        return Container();
      },
      // title: 'Oops!',
      // middleText: 'No mail apps installed',
      // textConfirm: 'OK',
      // onConfirm: () => Get.back(),
      // confirmTextColor: Colors.white,
      // barrierDismissible: true,
    );
  }

  static mailAppOptionsDialog(Widget? content) async {
    return await showDialog(
      context: JRouter.key.currentContext!,
      builder: (context) {
        return Container();
      },
    );
    // return Get.defaultDialog(
    //   title: 'Open Mail App',
    //   middleText: 'Please select your preferred mail application',
    //   textConfirm: 'Cancel',
    //   onConfirm: () => Get.back(),
    //   confirmTextColor: Colors.white,
    //   barrierDismissible: true,
    //   content: content,
    // );
  }

  static profileCompleteDialog() async {
    return await showDialog(
      context: JRouter.key.currentContext!,
      builder: (context) {
        return Container();
      },
    );
    // return Get.defaultDialog(
    //   title: 'Profile Updated',
    //   middleText: 'Thank you for telling us more about yourself. ' +
    //       'Click \'Okay\' to view your profile or ' +
    //       'click \'Home\' to go home.',
    //   onConfirm: () => Get.offAllNamed(JRoutes.profilePage),
    //   onCancel: () => Get.offAllNamed(JRoutes.layout),
    //   confirmTextColor: Colors.white,
    //   textConfirm: 'Okay',
    //   textCancel: 'Home',
    //   barrierDismissible: false,
    // );
  }

  static const editProfile = const _EditProfileDialog();
}

class _EditProfileDialog extends StatelessWidget {
  const _EditProfileDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bloc = BlocProvider.of<ProfileBloc>(context);

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
                    bloc.add(const ProfileEvent.editPressed(true));
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
