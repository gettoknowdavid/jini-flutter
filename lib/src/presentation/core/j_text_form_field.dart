import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class JTextFormField extends StatelessWidget {
  const JTextFormField({
    Key? key,
    this.hint,
    this.isPassword = false,
    this.keyboardType,
    this.color,
    this.autocorrect = false,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final String? hint;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Color? color;
  final bool autocorrect;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: color ?? Colors.white24,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        autocorrect: autocorrect,
        obscureText: isPassword,
        onChanged: onChanged,
        validator: validator,
        style: GoogleFonts.spaceGrotesk(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(18, 24, 18, 24).r,
          hintText: hint,
        ),
      ),
    );
  }
}
