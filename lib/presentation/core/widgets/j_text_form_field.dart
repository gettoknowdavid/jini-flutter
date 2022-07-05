import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JTextFormField extends StatefulWidget {
  const JTextFormField({
    Key? key,
    this.hint,
    this.isPassword = false,
    this.keyboardType,
    this.color = Colors.white24,
    this.autocorrect = false,
    this.onChanged,
    this.validator,
    this.enabled = true,
  }) : super(key: key);

  final String? hint;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Color? color;
  final bool autocorrect;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool enabled;

  @override
  State<JTextFormField> createState() => _JTextFormFieldState();
}

class _JTextFormFieldState extends State<JTextFormField> {
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.r),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        autocorrect: widget.autocorrect,
        obscureText: widget.isPassword ? !_isObscure : _isObscure,
        onChanged: widget.onChanged,
        validator: widget.validator,
        enabled: widget.enabled,
        style: GoogleFonts.spaceGrotesk(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(18, 22, 18, 22).r,
          hintText: widget.hint,
          hintStyle: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500),
          filled: true,
          errorMaxLines: 3,
          suffixIcon: !widget.isPassword
              ? const SizedBox()
              : IconButton(
                  icon: Icon(
                    _isObscure
                        ? PhosphorIcons.eyeSlashBold
                        : PhosphorIcons.eyeBold,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 18).r,
                  onPressed: () => setState(() => _isObscure = !_isObscure),
                ),
        ),
      ),
    );
  }
}
