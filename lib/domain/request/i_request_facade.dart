import 'package:dartz/dartz.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/request/request_failure.dart';

abstract class IRequestFacade {
  Future<Either<RequestFailure, Unit>> createRequest({
    required JUser user,
    required IBloodGroup bloodGroup,
  });

  Future<Either<RequestFailure, Unit>> deleteRequest(Uid uid);
}
