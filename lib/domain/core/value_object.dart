import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:jini/domain/core/errors.dart';
import 'package:jini/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  // id = identity - same as writing (right) => right
  // T getOrCrash() => value.fold((l) => throw UnexpectedValueError(l), id);
  T? getOrCrash() => value.fold((l) => l.mapOrNull(), id);

  bool isValid() => value.isRight();

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
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
