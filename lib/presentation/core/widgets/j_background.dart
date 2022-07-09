import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/image_resources.dart';

class JBackground extends StatelessWidget {
  const JBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageResources.background,
      color: Theme.of(context).brightness == Brightness.light
          ? const Color.fromRGBO(242, 87, 116, 0.1)
          : const Color.fromRGBO(255, 255, 255, 0.1),
      colorBlendMode: BlendMode.modulate,
    );
  }
}
