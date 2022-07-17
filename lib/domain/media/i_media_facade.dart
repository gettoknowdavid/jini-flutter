import 'dart:io';

import 'package:dartz/dartz.dart';

abstract class IMediaFacade {
  Future<Option<File?>> getImage();
}
