import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

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
      borderRadius: JScreenUtil.BORDER_RADIUS,
      dropdownColor: Theme.of(context).primaryColor,
      hint: Text(hint),
      value: value,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        filled: true,
        contentPadding: JScreenUtil.CONTENT_PADDING,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: JScreenUtil.BORDER_RADIUS,
        ),
      ),
    );
  }
}
