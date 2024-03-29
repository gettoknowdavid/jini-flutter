import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;
import 'package:jini/domain/core/failures.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/core/value_validators.dart';

class IAge extends ValueObject<num> {
  final Either<ValueFailure<num>, num> value;

  factory IAge(num input, [UserType? userType]) {
    switch (userType) {
      case UserType.donor:
        return IAge._(validateAge(input));
      case UserType.recipient:
        return IAge._(right(input));
      default:
        return IAge._(right(input));
    }
  }

  const IAge._(this.value);
}

class ILocation extends ValueObject<GeoPoint> {
  final Either<ValueFailure<GeoPoint>, GeoPoint> value;

  factory ILocation(GeoPoint? input) {
    if (input == null) {
      return ILocation._(
        left(ValueFailure.unknownLocation(failedValue: input)),
      );
    } else {
      return ILocation._(right(input));
    }
  }

  const ILocation._(this.value);
}



class IDateOfBirth extends ValueObject<DateTime> {
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory IDateOfBirth(DateTime input, [UserType? userType]) {
    switch (userType) {
      case UserType.donor:
        return IDateOfBirth._(validateDOB(input));
      case UserType.recipient:
        return IDateOfBirth._(right(input));
      default:
        return IDateOfBirth._(right(input));
    }
  }

  const IDateOfBirth._(this.value);
}

class IEmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IEmailAddress(String input) {
    final _input = input.toLowerCase().trim();
    return IEmailAddress._(validateEmailAddress(_input));
  }

  const IEmailAddress._(this.value);
}

class IGender extends ValueObject<Gender?> {
  final Either<ValueFailure<Gender?>, Gender?> value;

  factory IGender(Gender? input) {
    return IGender._(validateGenderNotNull(input));
  }

  const IGender._(this.value);
}

class IHeight extends ValueObject<num> {
  final Either<ValueFailure<num>, num> value;

  factory IHeight(num input) {
    return IHeight._(right(input));
  }

  const IHeight._(this.value);
}

class IName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IName(String input) {
    final _input = toBeginningOfSentenceCase(input);
    return IName._(validateStringNotEmpty(_input!));
  }

  const IName._(this.value);
}

class IPassword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  final bool isSignIn;

  factory IPassword(String input, {bool isSignIn = false}) {
    if (isSignIn) {
      return IPassword._(
        validateStringNotEmpty(input.trim()),
        isSignIn: isSignIn,
      );
    } else {
      return IPassword._(validatePassword(input.trim()), isSignIn: isSignIn);
    }
  }

  const IPassword._(this.value, {this.isSignIn = false});
}

class IPhone extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IPhone(String input) {
    return IPhone._(validatePhone(input));
  }

  const IPhone._(this.value);
}

class IUserType extends ValueObject<UserType?> {
  final Either<ValueFailure<UserType?>, UserType?> value;

  factory IUserType(UserType? input) {
    return IUserType._(validateUserTypeNotNull(input));
  }

  const IUserType._(this.value);
}

class IWeight extends ValueObject<num> {
  final Either<ValueFailure<num>, num> value;

  factory IWeight(num input, [UserType? userType]) {
    switch (userType) {
      case UserType.donor:
        return IWeight._(validateWeight(input));
      case UserType.recipient:
        return IWeight._(right(input));
      default:
        return IWeight._(right(input));
    }
  }

  const IWeight._(this.value);
}

extension CapExtension on String {
  String get toSentenceCase =>
      this.split(" ").map((s) => s[0].toUpperCase()).join(" ");
}
