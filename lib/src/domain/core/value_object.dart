import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:jini/src/domain/core/errors.dart';
import 'package:jini/src/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  // id = identity - same as writing (right) => right
  T getOrCrash() => value.fold((l) => throw UnexpectedValueError(l), id);

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
