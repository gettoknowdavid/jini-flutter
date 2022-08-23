import 'package:dartz/dartz.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/request/request.dart';
import 'package:jini/domain/request/request_failure.dart';

abstract class IRequestFacade {
  Future<Either<RequestFailure, Unit>> createRequest({
    required Request request,
  });

  Future<Either<RequestFailure, Unit>> deleteRequest(Uid uid);
}
