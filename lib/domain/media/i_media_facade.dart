import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class IMediaFacade {
  Future<Option<File?>> getImage();

  Future<void> upload(String path, String name, Reference reference);
}
