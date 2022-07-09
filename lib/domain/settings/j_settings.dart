import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/core/entity.dart';
import 'package:jini/domain/core/value_object.dart';

part 'j_settings.freezed.dart';

@freezed
class JSettings with _$JSettings implements IEntity {
  const factory JSettings({
    required Uid uid,
    required ThemeMode themeMode,
  }) = _JSettings;
}
