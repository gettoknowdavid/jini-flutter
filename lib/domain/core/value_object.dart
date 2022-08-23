import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/errors.dart';
import 'package:jini/domain/core/failures.dart';
import 'package:jini/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T? getOrCrash() => value.fold((l) => l.mapOrNull(), id);

  bool isValid() => value.isRight();

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

  @override
  bool operator ==(Object other) {
    return super == other;
  }
}

class Uid extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Uid() {
    return Uid._(right(Uuid().v4()));
  }

  factory Uid.fromUniqueString(String uid) {
    return Uid._(right(uid));
  }

  const Uid._(this.value);
}

class IBloodGroup extends ValueObject<BloodGroup?> {
  final Either<ValueFailure<BloodGroup?>, BloodGroup?> value;

  factory IBloodGroup(BloodGroup? input) {
    return IBloodGroup._(validateBloodGroupNotNull(input));
  }

  const IBloodGroup._(this.value);
}