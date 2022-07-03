import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JDropdown<T> extends StatelessWidget {
  const JDropdown({
    Key? key,
    required this.hint,
    required this.value,
    required this.onChanged,
    required this.items,
    this.validator,
  }) : super(key: key);

  final T? value;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;
  final List<DropdownMenuItem<T>> items;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      items: items,
      borderRadius: BorderRadius.circular(18.r),
      dropdownColor: Theme.of(context).primaryColor,
      hint: Text(hint),
      value: value,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: GoogleFonts.spaceGrotesk(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white24,
        contentPadding: EdgeInsets.fromLTRB(18, 22, 18, 22).r,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(18.r),
        ),
      ),
    );
  }
}
