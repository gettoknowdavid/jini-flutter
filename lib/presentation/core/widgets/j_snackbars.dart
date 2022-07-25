import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/routes/j_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JSnackbars {
  JSnackbars._();

  static final context = JRouter.key.currentContext!;

  static get closeAll {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).clearSnackBars();
  }

  static errorSnackbar({required String title, required String message}) {
    final textTheme = Theme.of(context).textTheme;

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        clipBehavior: Clip.none,
        backgroundColor: Colors.transparent,
        content: Container(
          height: JScreenUtil.sh(0.14),
          alignment: Alignment.center,
          padding: JScreenUtil.globalPadding,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: JScreenUtil.borderRadius,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(PhosphorIcons.warningCircle, color: Colors.white),
              JScreenUtil.hSpace(20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: JScreenUtil.fontSize(16),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    JScreenUtil.vSpace(10),
                    Text(
                      message,
                      style: textTheme.bodyLarge?.copyWith(
                        fontSize: JScreenUtil.fontSize(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
