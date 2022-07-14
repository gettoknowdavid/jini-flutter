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
    return Container(
      height: 68.h,
      width: 1.sw,
      decoration: loading || onPressed == null
          ? const BoxDecoration()
          : BoxDecoration(
              borderRadius: BorderRadius.circular(18).r,
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorDark,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
      child: ElevatedButton(
        onPressed: loading ? null : onPressed,
        style: ElevatedButton.styleFrom(primary: Colors.transparent),
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
