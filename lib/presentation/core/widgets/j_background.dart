import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';

class JBackground extends StatelessWidget {
  const JBackground({Key? key, this.forSplashScreen = false}) : super(key: key);

  final bool forSplashScreen;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      forSplashScreen ? ImageResources.background : ImageResources.pattern,
      color: forSplashScreen
          ? null
          : Theme.of(context).brightness == Brightness.light
              ? const Color.fromRGBO(242, 87, 116, 0.12)
              : const Color.fromRGBO(255, 255, 255, 0.25),
      colorBlendMode: BlendMode.modulate,
      height: JScreenUtil.sh(1),
      width: JScreenUtil.sw(1),
      fit: BoxFit.cover,
    );
  }
}
