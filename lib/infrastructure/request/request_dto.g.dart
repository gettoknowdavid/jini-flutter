// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_dto.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class RequestDtoCollectionReference
    implements
        RequestDtoQuery,
        FirestoreCollectionReference<RequestDtoQuerySnapshot> {
  factory RequestDtoCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$RequestDtoCollectionReference;

  static RequestDto fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return RequestDto.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    RequestDto value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<RequestDto> get reference;

  @override
  RequestDtoDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<RequestDtoDocumentReference> add(RequestDto value);
}

class _$RequestDtoCollectionReference extends _$RequestDtoQuery
    implements RequestDtoCollectionReference {
  factory _$RequestDtoCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$RequestDtoCollectionReference._(
      firestore.collection('requests').withConverter(
            fromFirestore: RequestDtoCollectionReference.fromFirestore,
            toFirestore: RequestDtoCollectionReference.toFirestore,
          ),
    );
  }

  _$RequestDtoCollectionReference._(
    CollectionReference<RequestDto> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<RequestDto> get reference =>
      super.reference as CollectionReference<RequestDto>;

  @override
  RequestDtoDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return RequestDtoDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<RequestDtoDocumentReference> add(RequestDto value) {
    return reference.add(value).then((ref) => RequestDtoDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$RequestDtoCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class RequestDtoDocumentReference
    extends FirestoreDocumentReference<RequestDtoDocumentSnapshot> {
  factory RequestDtoDocumentReference(DocumentReference<RequestDto> reference) =
      _$RequestDtoDocumentReference;

  DocumentReference<RequestDto> get reference;

  /// A reference to the [RequestDtoCollectionReference] containing this document.
  RequestDtoCollectionReference get parent {
    return _$RequestDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<RequestDtoDocumentSnapshot> snapshots();

  @override
  Future<RequestDtoDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> set(RequestDto value);
}

class _$RequestDtoDocumentReference
    extends FirestoreDocumentReference<RequestDtoDocumentSnapshot>
    implements RequestDtoDocumentReference {
  _$RequestDtoDocumentReference(this.reference);

  @override
  final DocumentReference<RequestDto> reference;

  /// A reference to the [RequestDtoCollectionReference] containing this document.
  RequestDtoCollectionReference get parent {
    return _$RequestDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<RequestDtoDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return RequestDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<RequestDtoDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return RequestDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> set(RequestDto value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is RequestDtoDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class RequestDtoDocumentSnapshot extends FirestoreDocumentSnapshot {
  RequestDtoDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<RequestDto> snapshot;

  @override
  RequestDtoDocumentReference get reference {
    return RequestDtoDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final RequestDto? data;
}

abstract class RequestDtoQuery
    implements QueryReference<RequestDtoQuerySnapshot> {
  @override
  RequestDtoQuery limit(int limit);

  @override
  RequestDtoQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  RequestDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    RequestDtoDocumentSnapshot? startAtDocument,
    RequestDtoDocumentSnapshot? endAtDocument,
    RequestDtoDocumentSnapshot? endBeforeDocument,
    RequestDtoDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  RequestDtoQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  RequestDtoQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  RequestDtoQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RequestDtoDocumentSnapshot? startAtDocument,
    RequestDtoDocumentSnapshot? endAtDocument,
    RequestDtoDocumentSnapshot? endBeforeDocument,
    RequestDtoDocumentSnapshot? startAfterDocument,
  });
}

class _$RequestDtoQuery extends QueryReference<RequestDtoQuerySnapshot>
    implements RequestDtoQuery {
  _$RequestDtoQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<RequestDto> reference;

  RequestDtoQuerySnapshot _decodeSnapshot(
    QuerySnapshot<RequestDto> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return RequestDtoQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<RequestDtoDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: RequestDtoDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return RequestDtoQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<RequestDtoQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<RequestDtoQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  RequestDtoQuery limit(int limit) {
    return _$RequestDtoQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  RequestDtoQuery limitToLast(int limit) {
    return _$RequestDtoQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  RequestDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RequestDtoDocumentSnapshot? startAtDocument,
    RequestDtoDocumentSnapshot? endAtDocument,
    RequestDtoDocumentSnapshot? endBeforeDocument,
    RequestDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$RequestDtoQuery(query, _collection);
  }

  RequestDtoQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$RequestDtoQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  RequestDtoQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$RequestDtoQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  RequestDtoQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RequestDtoDocumentSnapshot? startAtDocument,
    RequestDtoDocumentSnapshot? endAtDocument,
    RequestDtoDocumentSnapshot? endBeforeDocument,
    RequestDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$RequestDtoQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$RequestDtoQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class RequestDtoQuerySnapshot
    extends FirestoreQuerySnapshot<RequestDtoQueryDocumentSnapshot> {
  RequestDtoQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<RequestDto> snapshot;

  @override
  final List<RequestDtoQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<RequestDtoDocumentSnapshot>> docChanges;
}

class RequestDtoQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements RequestDtoDocumentSnapshot {
  RequestDtoQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<RequestDto> snapshot;

  @override
  RequestDtoDocumentReference get reference {
    return RequestDtoDocumentReference(snapshot.reference);
  }

  @override
  final RequestDto data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$RequestDtoToJson(RequestDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userUid': instance.userUid,
      'userName': instance.userName,
      'userLocation': const GeoConverter().toJson(instance.userLocation),
      'userAvatar': instance.userAvatar,
      'bloodGroup': _$BloodGroupEnumMap[instance.bloodGroup]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$BloodGroupEnumMap = {
  BloodGroup.aPlus: 'aPlus',
  BloodGroup.aMinus: 'aMinus',
  BloodGroup.bPlus: 'bPlus',
  BloodGroup.bMinus: 'bMinus',
  BloodGroup.oPlus: 'oPlus',
  BloodGroup.oMinus: 'oMinus',
  BloodGroup.abPlus: 'abPlus',
  BloodGroup.abMinus: 'abMinus',
};

_$_RequestDto _$$_RequestDtoFromJson(Map<String, dynamic> json) =>
    _$_RequestDto(
      uid: json['uid'] as String,
      userUid: json['userUid'] as String,
      userName: json['userName'] as String,
      userLocation:
          const GeoConverter().fromJson(json['userLocation'] as GeoPoint),
      userAvatar: json['userAvatar'] as String?,
      bloodGroup: $enumDecode(_$BloodGroupEnumMap, json['bloodGroup']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_RequestDtoToJson(_$_RequestDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userUid': instance.userUid,
      'userName': instance.userName,
      'userLocation': const GeoConverter().toJson(instance.userLocation),
      'userAvatar': instance.userAvatar,
      'bloodGroup': _$BloodGroupEnumMap[instance.bloodGroup]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };
