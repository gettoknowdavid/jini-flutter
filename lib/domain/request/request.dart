import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/entity.dart';
import 'package:jini/domain/core/value_object.dart';

part 'request.freezed.dart';

@freezed
class Request with _$Request implements IEntity {
  const factory Request({
    required Uid uid,
    required Uid userUid,
    required IName userName,
    required ILocation userLocation,
    required IBloodGroup bloodGroup,
    required DateTime createdAt,
    String? userAvatar,
  }) = _Request;

  factory Request.empty() => Request(
        uid: Uid(),
        userUid: Uid(),
        userName: IName(''),
        userLocation: ILocation(null),
        userAvatar: null,
        bloodGroup: IBloodGroup(null),
        createdAt: DateTime.now(),
      );
}
