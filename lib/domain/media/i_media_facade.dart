import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:jini/domain/media/media_failure.dart';

abstract class IMediaFacade {
  Future<File?> getImage();

  Future<Either<MediaFailure, Unit>> upload(String path);

  Future<Either<MediaFailure, String>> download();
}
