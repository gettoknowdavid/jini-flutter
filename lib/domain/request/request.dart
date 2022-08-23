import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/core/entity.dart';
import 'package:jini/domain/core/value_object.dart';

part 'request.freezed.dart';

@freezed
class Request with _$Request implements IEntity {
  const factory Request({
    required Uid uid,
    required JUser user,
    required IBloodGroup bloodGroup,
    required DateTime createdAt,
  }) = _Request;

  factory Request.empty() => Request(
        uid: Uid(),
        user: JUser.empty(),
        bloodGroup: IBloodGroup(null),
        createdAt: DateTime.now(),
      );
}
