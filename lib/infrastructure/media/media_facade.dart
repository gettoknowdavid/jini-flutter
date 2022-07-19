import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/media/i_media_facade.dart';
import 'package:jini/domain/media/media_failure.dart';

@LazySingleton(as: IMediaFacade)
class MediaFacade implements IMediaFacade {
  MediaFacade(this._firebaseAuth, this._storage, this._picker);

  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _storage;
  final ImagePicker _picker;

  @override
  Future<File?> getImage() async {
    final XFile? _file = await _picker.pickImage(source: ImageSource.gallery);

    if (_file != null) {
      return File(_file.path);
    } else {
      return null;
    }
  }

  Reference ref() {
    final uid = _firebaseAuth.currentUser!.uid;
    return _storage.ref().child("images/avatar/$uid.jpg");
  }

  @override
  Future<Either<MediaFailure, Unit>> upload(String path) async {
    File _file = File(path);
    try {
      await ref().putFile(_file);
      return right(unit);
    } on FirebaseException catch (_) {
      return left(MediaFailure.serverError());
    }
  }

  @override
  Future<Either<MediaFailure, String>> download() async {
    try {
      final _r = await ref().getDownloadURL();
      return right(_r);
    } on FirebaseException catch (_) {
      return left(MediaFailure.serverError());
    }
  }
}
