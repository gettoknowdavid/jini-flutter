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
    return TextFormField(
      keyboardType: widget.keyboardType,
      autocorrect: widget.autocorrect,
      obscureText: widget.isPassword ? !_isObscure : _isObscure,
      onChanged: widget.onChanged,
      validator: widget.validator,
      enabled: widget.enabled,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        contentPadding: JScreenUtil.textFieldPadding,
        hintText: widget.hint,
        labelText: widget.label,
        filled: true,
        errorMaxLines: 5,
        border: OutlineInputBorder(
          borderRadius: JScreenUtil.borderRadius,
          borderSide: BorderSide(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black12
                : Colors.white12,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: JScreenUtil.borderRadius,
          borderSide: BorderSide(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black12
                : Colors.white12,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: JScreenUtil.borderRadius,
          borderSide: BorderSide(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black12
                : Colors.white12,
          ),
        ),
        suffixIcon: !widget.isPassword
            ? const SizedBox()
            : GestureDetector(
                child: Icon(
                  _isObscure
                      ? PhosphorIcons.eyeSlashBold
                      : PhosphorIcons.eyeBold,
                ),
                onTap: () => setState(() => _isObscure = !_isObscure),
              ),
      ),
    );
  }
}
