import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({T? failedValue}) = Empty<T>;
  const factory ValueFailure.nullValue({T? failedValue}) = NullValue<T>;
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.tooYoung({
    required T failedValue,
  }) = AgeTooYoung<T>;
  const factory ValueFailure.tooOld({
    required T failedValue,
  }) = AgeTooOld<T>;
  const factory ValueFailure.weightTooSmall({
    required T failedValue,
  }) = WeightTooSmall<T>;
  const factory ValueFailure.weightTooBig({
    required T failedValue,
  }) = WeightTooBig<T>;
  const factory ValueFailure.numberTooLarge({
    required T failedValue,
    required num max,
  }) = NumberTooLarge<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPhone({
    required T failedValue,
  }) = InvalidPhone<T>;
  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidAge({
    required T failedValue,
  }) = InvalidAge<T>;
  const factory ValueFailure.invalidPhotoUrl({
    required T failedValue,
  }) = InvalidPhotoUrl<T>;
}
