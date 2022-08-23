// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'j_user_dtos.dart';

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
abstract class JUserDtoCollectionReference
    implements
        JUserDtoQuery,
        FirestoreCollectionReference<JUserDtoQuerySnapshot> {
  factory JUserDtoCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$JUserDtoCollectionReference;

  static JUserDto fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return JUserDto.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    JUserDto value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<JUserDto> get reference;

  @override
  JUserDtoDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<JUserDtoDocumentReference> add(JUserDto value);
}

class _$JUserDtoCollectionReference extends _$JUserDtoQuery
    implements JUserDtoCollectionReference {
  factory _$JUserDtoCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$JUserDtoCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: JUserDtoCollectionReference.fromFirestore,
            toFirestore: JUserDtoCollectionReference.toFirestore,
          ),
    );
  }

  _$JUserDtoCollectionReference._(
    CollectionReference<JUserDto> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<JUserDto> get reference =>
      super.reference as CollectionReference<JUserDto>;

  @override
  JUserDtoDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return JUserDtoDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<JUserDtoDocumentReference> add(JUserDto value) {
    return reference.add(value).then((ref) => JUserDtoDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$JUserDtoCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class JUserDtoDocumentReference
    extends FirestoreDocumentReference<JUserDtoDocumentSnapshot> {
  factory JUserDtoDocumentReference(DocumentReference<JUserDto> reference) =
      _$JUserDtoDocumentReference;

  DocumentReference<JUserDto> get reference;

  /// A reference to the [JUserDtoCollectionReference] containing this document.
  JUserDtoCollectionReference get parent {
    return _$JUserDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<JUserDtoDocumentSnapshot> snapshots();

  @override
  Future<JUserDtoDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> set(JUserDto value);
}

class _$JUserDtoDocumentReference
    extends FirestoreDocumentReference<JUserDtoDocumentSnapshot>
    implements JUserDtoDocumentReference {
  _$JUserDtoDocumentReference(this.reference);

  @override
  final DocumentReference<JUserDto> reference;

  /// A reference to the [JUserDtoCollectionReference] containing this document.
  JUserDtoCollectionReference get parent {
    return _$JUserDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<JUserDtoDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return JUserDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<JUserDtoDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return JUserDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> set(JUserDto value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is JUserDtoDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class JUserDtoDocumentSnapshot extends FirestoreDocumentSnapshot {
  JUserDtoDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<JUserDto> snapshot;

  @override
  JUserDtoDocumentReference get reference {
    return JUserDtoDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final JUserDto? data;
}

abstract class JUserDtoQuery implements QueryReference<JUserDtoQuerySnapshot> {
  @override
  JUserDtoQuery limit(int limit);

  @override
  JUserDtoQuery limitToLast(int limit);

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
  JUserDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    JUserDtoDocumentSnapshot? startAtDocument,
    JUserDtoDocumentSnapshot? endAtDocument,
    JUserDtoDocumentSnapshot? endBeforeDocument,
    JUserDtoDocumentSnapshot? startAfterDocument,
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
  JUserDtoQuery whereFieldPath(
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

  JUserDtoQuery whereDocumentId({
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

  JUserDtoQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    JUserDtoDocumentSnapshot? startAtDocument,
    JUserDtoDocumentSnapshot? endAtDocument,
    JUserDtoDocumentSnapshot? endBeforeDocument,
    JUserDtoDocumentSnapshot? startAfterDocument,
  });
}

class _$JUserDtoQuery extends QueryReference<JUserDtoQuerySnapshot>
    implements JUserDtoQuery {
  _$JUserDtoQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<JUserDto> reference;

  JUserDtoQuerySnapshot _decodeSnapshot(
    QuerySnapshot<JUserDto> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return JUserDtoQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<JUserDtoDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: JUserDtoDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return JUserDtoQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<JUserDtoQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<JUserDtoQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  JUserDtoQuery limit(int limit) {
    return _$JUserDtoQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  JUserDtoQuery limitToLast(int limit) {
    return _$JUserDtoQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  JUserDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    JUserDtoDocumentSnapshot? startAtDocument,
    JUserDtoDocumentSnapshot? endAtDocument,
    JUserDtoDocumentSnapshot? endBeforeDocument,
    JUserDtoDocumentSnapshot? startAfterDocument,
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

    return _$JUserDtoQuery(query, _collection);
  }

  JUserDtoQuery whereFieldPath(
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
    return _$JUserDtoQuery(
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

  JUserDtoQuery whereDocumentId({
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
    return _$JUserDtoQuery(
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

  JUserDtoQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    JUserDtoDocumentSnapshot? startAtDocument,
    JUserDtoDocumentSnapshot? endAtDocument,
    JUserDtoDocumentSnapshot? endBeforeDocument,
    JUserDtoDocumentSnapshot? startAfterDocument,
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

    return _$JUserDtoQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$JUserDtoQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class JUserDtoQuerySnapshot
    extends FirestoreQuerySnapshot<JUserDtoQueryDocumentSnapshot> {
  JUserDtoQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<JUserDto> snapshot;

  @override
  final List<JUserDtoQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<JUserDtoDocumentSnapshot>> docChanges;
}

class JUserDtoQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements JUserDtoDocumentSnapshot {
  JUserDtoQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<JUserDto> snapshot;

  @override
  JUserDtoDocumentReference get reference {
    return JUserDtoDocumentReference(snapshot.reference);
  }

  @override
  final JUserDto data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$JUserDtoToJson(JUserDto instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('gender', _$GenderEnumMap[instance.gender]);
  writeNotNull('dob', instance.dob?.toIso8601String());
  writeNotNull('age', instance.age);
  writeNotNull('height', instance.height);
  writeNotNull('weight', instance.weight);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('city', instance.city);
  writeNotNull('avatar', instance.avatar);
  writeNotNull(
      'location',
      _$JsonConverterToJson<GeoPoint, GeoPoint>(
          instance.location, const GeoConverter().toJson));
  writeNotNull('bloodGroup', _$BloodGroupEnumMap[instance.bloodGroup]);
  writeNotNull('userType', _$UserTypeEnumMap[instance.userType]);
  writeNotNull('eligible', instance.eligible);
  writeNotNull('formComplete', instance.formComplete);
  writeNotNull('initEdit', instance.initEdit);
  return val;
}

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

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

const _$UserTypeEnumMap = {
  UserType.donor: 'donor',
  UserType.recipient: 'recipient',
};

_$_JUserDto _$$_JUserDtoFromJson(Map<String, dynamic> json) => _$_JUserDto(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      age: json['age'] as num?,
      height: json['height'] as num?,
      weight: json['weight'] as num?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      avatar: json['avatar'] as String?,
      location: _$JsonConverterFromJson<GeoPoint, GeoPoint>(
          json['location'], const GeoConverter().fromJson),
      bloodGroup: $enumDecodeNullable(_$BloodGroupEnumMap, json['bloodGroup']),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      eligible: json['eligible'] as bool?,
      formComplete: json['formComplete'] as bool?,
      initEdit: json['initEdit'] as bool?,
    );

Map<String, dynamic> _$$_JUserDtoToJson(_$_JUserDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'dob': instance.dob?.toIso8601String(),
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'email': instance.email,
      'phone': instance.phone,
      'city': instance.city,
      'avatar': instance.avatar,
      'location': _$JsonConverterToJson<GeoPoint, GeoPoint>(
          instance.location, const GeoConverter().toJson),
      'bloodGroup': _$BloodGroupEnumMap[instance.bloodGroup],
      'userType': _$UserTypeEnumMap[instance.userType],
      'eligible': instance.eligible,
      'formComplete': instance.formComplete,
      'initEdit': instance.initEdit,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
