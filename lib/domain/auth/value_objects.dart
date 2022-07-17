import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/failures.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/core/value_validators.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

class IEmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IEmailAddress(String input) {
    final _input = input.toLowerCase().trim();
    return IEmailAddress._(validateEmailAddress(_input));
  }

  const IEmailAddress._(this.value);
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

class IAvatar extends ValueObject<XFile?> {
  final Either<ValueFailure<XFile?>, XFile?> value;

  factory IAvatar(XFile? input) {
    return IAvatar._(validatePhoto(input));
  }

  const IAvatar._(this.value);
}

class IName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory IName(String input) {
    final _input = toBeginningOfSentenceCase(input);
    return IName._(validateStringNotEmpty(_input!));
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

extension CapExtension on String {
  String get toSentenceCase =>
      this.split(" ").map((s) => s[0].toUpperCase()).join(" ");
}
