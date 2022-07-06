import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class JTextFormField extends StatefulWidget {
  const JTextFormField({
    Key? key,
    this.hint,
    this.label,
    this.isPassword = false,
    this.keyboardType,
    this.color = Colors.white24,
    this.autocorrect = false,
    this.onChanged,
    this.validator,
    this.enabled = true,
  }) : super(key: key);

  final String? hint;
  final String? label;
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
      borderRadius: JScreenUtil.BORDER_RADIUS,
      child: TextFormField(
        keyboardType: widget.keyboardType,
        autocorrect: widget.autocorrect,
        obscureText: widget.isPassword ? !_isObscure : _isObscure,
        onChanged: widget.onChanged,
        validator: widget.validator,
        enabled: widget.enabled,
        style: Theme.of(context).textTheme.titleMedium,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: JScreenUtil.TEXTFIELD_PADDING,
          hintText: widget.hint,
          labelText: widget.label,
          filled: true,
          errorMaxLines: 5,
          suffixIcon: !widget.isPassword
              ? const SizedBox()
              : IconButton(
                  icon: Icon(
                    _isObscure
                        ? PhosphorIcons.eyeSlashBold
                        : PhosphorIcons.eyeBold,
                  ),
                  padding: JScreenUtil.GLOBAL_PADDING,
                  onPressed: () => setState(() => _isObscure = !_isObscure),
                ),
        ),
      ),
    );
  }
}
