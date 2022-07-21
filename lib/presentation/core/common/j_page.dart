import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/widgets/j_background.dart';

class JPage extends StatelessWidget {
  const JPage({
    Key? key,
    required this.child,
    this.loading = false,
    this.appBar,
    this.extendBodyBehindAppBar = false,
    this.addGlobalPadding = true,
  }) : super(key: key);

  final Widget child;
  final bool loading;
  final AppBar? appBar;
  final bool extendBodyBehindAppBar;
  final bool addGlobalPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: Stack(
        children: [
          const JBackground(),
          Padding(
            padding:
                addGlobalPadding ? JScreenUtil.globalPadding : EdgeInsets.zero,
            child: child,
          ),
          if (loading)
            Align(
              alignment: Alignment.center,
              child: Container(
                width: JScreenUtil.sw(1),
                height: JScreenUtil.sh(1),
                color: Colors.black54,
                child: Center(
                  child: Container(
                    width: JScreenUtil.sw(0.1),
                    height: JScreenUtil.sw(0.1),
                    child: const CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
