import 'package:dartz/dartz.dart';
import 'package:jini/src/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  const phoneRegex = r"""^0[0-9]\d{0,12}$""";
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // Must contain at least 8 characters
  // Must contain at least 1 uppercase letter, 1 lowercase letter, and 1 number
  // Must contain a special characters
  const pRegEx =
      r"""^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[@$!%*?&]).{8,}$""";
  if (RegExp(pRegEx).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateAge(num input) {
  if (input.toInt() < 17) {
    return left(ValueFailure.tooYoung(failedValue: input));
  } else if (input.toInt() > 60) {
    return left(ValueFailure.tooOld(failedValue: input));
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
