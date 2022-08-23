import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/domain/request/i_request_facade.dart';
import 'package:jini/domain/request/request.dart';
import 'package:jini/domain/request/request_failure.dart';
import 'package:jini/infrastructure/request/request_dto.dart';

@LazySingleton(as: IRequestFacade)
class RequestFacade implements IRequestFacade {
  RequestFacade(this._firestore, this._firebaseAuth);
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<RequestFailure, Unit>> createRequest({
    required Request request,
  }) async {
    try {
      final requestDto = RequestDto.fromDomain(request);

      print(requestDto.toJson());

      final storeRequest = await requestsRef
          .whereFieldPath(
            FieldPath.fromString('bloodGroup'),
            isEqualTo: requestDto.bloodGroup.name,
          )
          .get()
          .then((snap) => snap.docs.map((e) => e.data).toList());

      if (storeRequest.isNotEmpty) {
        return left(const RequestFailure.alreadyExists());
      }

      await requestsRef
          .doc(requestDto.uid)
          .set(requestDto)
          .timeout(const Duration(seconds: 10));

      return right(unit);
    } on FirebaseException catch (e) {
      print("Create Request Error: $e");
      return left(const RequestFailure.serverError());
    }
  }

  @override
  Future<Either<RequestFailure, Unit>> deleteRequest(Uid uid) async {
    // TODO: implement deleteRequest
    throw UnimplementedError();
  }
}
