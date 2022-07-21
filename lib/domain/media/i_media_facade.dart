import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jini/domain/media/media_failure.dart';

abstract class IMediaFacade {
  Future<File?> getImage([ImageSource source = ImageSource.gallery]);

  Future<Either<MediaFailure, Unit>> upload(String path);

  Future<Either<MediaFailure, String>> download();
}
