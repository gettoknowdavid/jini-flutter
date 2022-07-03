import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JButton extends StatelessWidget {
  const JButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.loading = false,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final bool loading;

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
                  child: const CircularProgressIndicator(),
                ),
        ],
      ),
    );
  }
}
