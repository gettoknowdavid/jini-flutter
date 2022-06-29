import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';

class JButton extends StatelessWidget {
  const JButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.fontSize,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.padding,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ElevatedButton.styleFrom(
        elevation: 16,
        shadowColor: AppColors.swatch.shade700,
        primary: backgroundColor ?? AppColors.primary,
        padding: padding ?? EdgeInsets.all(20).r,
        textStyle: GoogleFonts.spaceGrotesk(
          color: textColor,
          fontSize: fontSize ?? 18.sp,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.r),
        ),
      ),
    );
  }
}
