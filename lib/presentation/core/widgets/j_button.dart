import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/presentation/core/common/j_theme.dart';

class JButton extends StatelessWidget {
  const JButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.fontSize,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.padding,
    this.loading = false,
    this.indicatorColor,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final bool loading;
  final Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          10.horizontalSpace,
          !loading
              ? const SizedBox()
              : SizedBox(
                  height: 18.w,
                  width: 18.w,
                  child: CircularProgressIndicator(color: indicatorColor),
                ),
        ],
      ),
    );
  }
}
