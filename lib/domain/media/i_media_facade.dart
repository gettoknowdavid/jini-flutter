import 'package:image_picker/image_picker.dart';

abstract class IMediaFacade {
  Future<XFile?> getImage();
}
