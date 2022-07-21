import 'package:dartz/dartz.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/failures.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';

Either<ValueFailure<num>, num> validateAge(num input) {
  if (input.toInt() < 17) {
    return left(ValueFailure.tooYoung(failedValue: input));
  } else if (input.toInt() > 60) {
    return left(ValueFailure.tooOld(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<BloodGroup>, BloodGroup> validateBloodGroupNotNull(
    BloodGroup? input) {
  if (input == null) {
    return left(ValueFailure.nullValue());
  } else {
    return right(input);
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDOB(DateTime input) {
  final present = DateTime.now().year;
  final difference = present - input.year;

  if (difference < 17) {
    return left(ValueFailure.tooYoung(failedValue: input));
  } else if (difference > 60) {
    return left(ValueFailure.tooOld(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidEmail(failedValue: input));
    }
  }
}

Either<ValueFailure<Gender>, Gender> validateGenderNotNull(Gender? input) {
  if (input == null) {
    return left(ValueFailure.nullValue());
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // Must contain at least 8 characters
  // Must contain at least 1 uppercase letter, 1 lowercase letter, and 1 number
  // Must contain a special characters
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    const pRegEx =
        r"""^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[@$!%*?&]).{8,}$""";
    if (RegExp(pRegEx).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidPassword(failedValue: input));
    }
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  const phoneRegex =
      r"""^(\+234|234|0)(70|70|70|70|70|70|70|70|70|80|80|80|80|80|80|80|80|81|81|81|81|81|81|81|81|81|81|91|90|90|90|90|90|90|90|90|90)([0-9]{8})$""";
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<UserType>, UserType> validateUserTypeNotNull(
    UserType? input) {
  if (input == null) {
    return left(ValueFailure.nullValue());
  } else {
    return right(input);
  }
}

Either<ValueFailure<num>, num> validateWeight(num input) {
  if (input < 45) {
    return left(ValueFailure.weightTooSmall(failedValue: input));
  } else if (input > 150) {
    return left(ValueFailure.weightTooBig(failedValue: input));
  } else {
    return right(input);
  }
}
