import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';

class JDialogs {
  JDialogs._();

  static noMailAppDialog() async {
    return await showDialog(
      context: JRouter.key.currentContext!,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: JScreenUtil.borderRadius),
          title: const Text('Oops!', textAlign: TextAlign.center),
          content: const Text(
            'No mail apps installed',
            textAlign: TextAlign.center,
          ),
          contentPadding: JScreenUtil.padFromLTRB(18, 6, 18, 6),
          actionsPadding: JScreenUtil.padFromLTRB(0, 0, 18, 18),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('Okay', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ],
        );
      },
    );
  }

  static mailAppOptionsDialog(Widget? content) async {
    return await showDialog(
      context: JRouter.key.currentContext!,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: JScreenUtil.borderRadius),
          title: const Text('Open Mail App', textAlign: TextAlign.center),
          content: Column(
            children: [
              const Text(
                'Please select your preferred mail application',
                textAlign: TextAlign.center,
              ),
              JScreenUtil.vSpace(10),
              content ?? const SizedBox(),
            ],
          ),
          contentPadding: JScreenUtil.padFromLTRB(18, 6, 18, 6),
          actionsPadding: JScreenUtil.padFromLTRB(0, 0, 18, 18),
          actions: [
            OutlinedButton(
              onPressed: () => Navigator.of(JRouter.key.currentContext!).pop(),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  static profileCompleteDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: JScreenUtil.borderRadius),
          title: const Text('Profile Updated', textAlign: TextAlign.center),
          content: const Text(
            'Thank you for telling us more about yourself. ' +
                'Click \'Okay\' to view your profile or ' +
                'click \'Home\' to go home.',
            textAlign: TextAlign.center,
          ),
          contentPadding: JScreenUtil.padFromLTRB(18, 6, 18, 6),
          actionsPadding: JScreenUtil.padFromLTRB(0, 0, 18, 18),
          actions: [
            OutlinedButton(onPressed: () {}, child: Text('Cancel')),
            TextButton(
              onPressed: () {},
              child: Text('Okay', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(backgroundColor: theme.primaryColor),
            ),
          ],
        );
      },
    );
  }
}
