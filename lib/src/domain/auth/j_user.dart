import 'package:freezed_annotation/freezed_annotation.dart';

part 'j_user.freezed.dart';

@freezed
abstract class JUser with _$JUser {
  factory JUser({
    required String uid,
  }) = _JUser;
}
