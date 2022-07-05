import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JDrawer extends StatelessWidget {
  const JDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.9.sh,
      alignment: Alignment.topLeft,
      child: Drawer(),
    );
  }
}
