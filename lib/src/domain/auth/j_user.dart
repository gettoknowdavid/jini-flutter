import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/src/domain/core/value_object.dart';

part 'j_user.freezed.dart';

@freezed
class JUser with _$JUser {
  factory JUser({
    required Uid uid,
  }) = _JUser;
}
