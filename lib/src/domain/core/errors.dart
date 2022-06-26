import 'package:jini/src/domain/core/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const desc =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$desc Failure was: $valueFailure');
  }
}
