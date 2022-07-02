import 'package:flutter/material.dart';
import 'package:jini/common/image_resources.dart';

class DonorRequirementsPage extends StatelessWidget {
  const DonorRequirementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donor Requirements Form')),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(ImageResources.background),
          ),
        ],
      ),
    );
  }
}
