import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JOutlinedButton extends StatelessWidget {
  const JOutlinedButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.loading = false,
    this.disabled = false,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final bool loading;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      width: 1.sw,
      child: OutlinedButton(
        onPressed: loading || disabled ? null : onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(loading ? 'Loading...' : title),
            10.horizontalSpace,
            !loading
                ? const SizedBox()
                : SizedBox(
                    height: 18.w,
                    width: 18.w,
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
