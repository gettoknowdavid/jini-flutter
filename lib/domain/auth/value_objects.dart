import 'package:dartz/dartz.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/failures.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/core/value_validators.dart';

class IEmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IEmailAddress(String input) {
    return IEmailAddress._(validateEmailAddress(input.toLowerCase().trim()));
  }

  const IEmailAddress._(this.value);
}

class IPassword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IPassword(String input) {
    return IPassword._(validatePassword(input.trim()));
  }

  const IPassword._(this.value);
}

class IName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IName(String input) {
    return IName._(validateStringNotEmpty(input));
  }

  const IName._(this.value);
}

class IBloodGroup extends ValueObject<BloodGroup?> {
  final Either<ValueFailure<BloodGroup?>, BloodGroup?> value;

  factory IBloodGroup(BloodGroup? input) {
    return IBloodGroup._(validateBloodGroupNotNull(input));
  }

  const IBloodGroup._(this.value);
}

class IGender extends ValueObject<Gender?> {
  final Either<ValueFailure<Gender?>, Gender?> value;

  factory IGender(Gender? input) {
    return IGender._(validateGenderNotNull(input));
  }

  const IGender._(this.value);
}

class IUserType extends ValueObject<UserType?> {
  final Either<ValueFailure<UserType?>, UserType?> value;

  factory IUserType(UserType? input) {
    return IUserType._(validateUserTypeNotNull(input));
  }

  const IUserType._(this.value);
}

class IAge extends ValueObject<num> {
  final Either<ValueFailure<num>, num> value;

  factory IAge(num input) {
    return IAge._(validateAge(input));
  }

  const IAge._(this.value);
}

class IWeight extends ValueObject<num> {
  final Either<ValueFailure<num>, num> value;

  factory IWeight(num input) {
    return IWeight._(validateWeight(input));
  }

  const IWeight._(this.value);
}

class IHeight extends ValueObject<num> {
  final Either<ValueFailure<num>, num> value;

  factory IHeight(num input) {
    return IHeight._(right(input));
  }

  const IHeight._(this.value);
}

class IPhone extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IPhone(String input) {
    return IPhone._(validatePhone(input));
  }

  const IPhone._(this.value);
}
