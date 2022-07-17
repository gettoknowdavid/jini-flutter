import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/media/i_media_facade.dart';

@LazySingleton(as: IMediaFacade)
class MediaFacade implements IMediaFacade {
  MediaFacade(this._picker);

  final ImagePicker _picker;

  @override
  Future<Option<File?>> getImage() async {
    final _file = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 60,
    );

    if (_file != null) {
      return optionOf(File(_file.path));
    } else {
      return optionOf(null);
    }
  }
}
