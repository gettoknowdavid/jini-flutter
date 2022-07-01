import 'package:dartz/dartz.dart';
import 'package:jini/src/domain/core/failures.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/domain/core/user_type.dart';
import 'package:jini/src/domain/core/value_object.dart';
import 'package:jini/src/domain/core/value_validators.dart';

class IEmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IEmailAddress(String input) {
    return IEmailAddress._(
      validateEmailAddress(input),
    );
  }

  const IEmailAddress._(this.value);
}

class IPassword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IPassword(String input) {
    return IPassword._(
      validatePassword(input),
    );
  }

  const IPassword._(this.value);
}

class IName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IName(String input) {
    return IName._(right(input));
  }

  const IName._(this.value);
}

class IGender extends ValueObject<Gender> {
  final Either<ValueFailure<Gender>, Gender> value;

  factory IGender(Gender input) {
    return IGender._(right(input));
  }

  const IGender._(this.value);
}

class IUserType extends ValueObject<UserType> {
  final Either<ValueFailure<UserType>, UserType> value;

  factory IUserType(UserType input) {
    return IUserType._(right(input));
  }

  const IUserType._(this.value);
}
