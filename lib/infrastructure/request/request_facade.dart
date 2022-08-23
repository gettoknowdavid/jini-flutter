import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/domain/request/i_request_facade.dart';
import 'package:jini/domain/request/request.dart';
import 'package:jini/domain/request/request_failure.dart';
import 'package:jini/infrastructure/auth/j_user_dtos.dart';
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
      // final userId = _firebaseAuth.currentUser!.uid;
      // final user = await jUsersRef.doc(userId).get().then((v) => v.data);

      final requestDto = RequestDto(
        uid: request.uid.getOrCrash()!,
        user: JUserDto.fromDomain(request.user),
        bloodGroup: request.user.bloodGroup!.getOrCrash()!,
        createdAt: request.createdAt,
      );

      final storeRequest = await requestsRef
          .whereFieldPath(
            FieldPath.fromString('bloodGroup'),
            isEqualTo: requestDto.bloodGroup,
          )
          .get()
          .then((snap) => snap.docs.map((e) => e.data).toList());

      if (storeRequest.isNotEmpty) {
        return left(const RequestFailure.alreadyExists());
      }

      await requestsRef.doc(requestDto.uid).set(requestDto);

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
