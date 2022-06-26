// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'j_user_model.dart';

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
abstract class JUserModelCollectionReference
    implements
        JUserModelQuery,
        FirestoreCollectionReference<JUserModelQuerySnapshot> {
  factory JUserModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$JUserModelCollectionReference;

  static JUserModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return JUserModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    JUserModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  JUserModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<JUserModelDocumentReference> add(JUserModel value);
}

class _$JUserModelCollectionReference extends _$JUserModelQuery
    implements JUserModelCollectionReference {
  factory _$JUserModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$JUserModelCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: JUserModelCollectionReference.fromFirestore,
            toFirestore: JUserModelCollectionReference.toFirestore,
          ),
    );
  }

  _$JUserModelCollectionReference._(
    CollectionReference<JUserModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<JUserModel> get reference =>
      super.reference as CollectionReference<JUserModel>;

  @override
  JUserModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return JUserModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<JUserModelDocumentReference> add(JUserModel value) {
    return reference.add(value).then((ref) => JUserModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$JUserModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class JUserModelDocumentReference
    extends FirestoreDocumentReference<JUserModelDocumentSnapshot> {
  factory JUserModelDocumentReference(DocumentReference<JUserModel> reference) =
      _$JUserModelDocumentReference;

  DocumentReference<JUserModel> get reference;

  /// A reference to the [JUserModelCollectionReference] containing this document.
  JUserModelCollectionReference get parent {
    return _$JUserModelCollectionReference(reference.firestore);
  }

  @override
  Stream<JUserModelDocumentSnapshot> snapshots();

  @override
  Future<JUserModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> set(JUserModel value);
}

class _$JUserModelDocumentReference
    extends FirestoreDocumentReference<JUserModelDocumentSnapshot>
    implements JUserModelDocumentReference {
  _$JUserModelDocumentReference(this.reference);

  @override
  final DocumentReference<JUserModel> reference;

  /// A reference to the [JUserModelCollectionReference] containing this document.
  JUserModelCollectionReference get parent {
    return _$JUserModelCollectionReference(reference.firestore);
  }

  @override
  Stream<JUserModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return JUserModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<JUserModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return JUserModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> set(JUserModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is JUserModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class JUserModelDocumentSnapshot extends FirestoreDocumentSnapshot {
  JUserModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<JUserModel> snapshot;

  @override
  JUserModelDocumentReference get reference {
    return JUserModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final JUserModel? data;
}

abstract class JUserModelQuery
    implements QueryReference<JUserModelQuerySnapshot> {
  @override
  JUserModelQuery limit(int limit);

  @override
  JUserModelQuery limitToLast(int limit);
}

class _$JUserModelQuery extends QueryReference<JUserModelQuerySnapshot>
    implements JUserModelQuery {
  _$JUserModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<JUserModel> reference;

  JUserModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<JUserModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return JUserModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<JUserModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: JUserModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return JUserModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<JUserModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<JUserModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  JUserModelQuery limit(int limit) {
    return _$JUserModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  JUserModelQuery limitToLast(int limit) {
    return _$JUserModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$JUserModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class JUserModelQuerySnapshot
    extends FirestoreQuerySnapshot<JUserModelQueryDocumentSnapshot> {
  JUserModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<JUserModel> snapshot;

  @override
  final List<JUserModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<JUserModelDocumentSnapshot>> docChanges;
}

class JUserModelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements JUserModelDocumentSnapshot {
  JUserModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<JUserModel> snapshot;

  @override
  JUserModelDocumentReference get reference {
    return JUserModelDocumentReference(snapshot.reference);
  }

  @override
  final JUserModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JUserModel _$JUserModelFromJson(Map<String, dynamic> json) => JUserModel(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      age: json['age'] as num?,
      height: json['height'] as num?,
      weight: json['weight'] as num?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      location: json['location'],
      bloodGroup: $enumDecodeNullable(_$BloodGroupEnumMap, json['bloodGroup']),
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      eligible: json['eligible'] as bool?,
      formComplete: json['formComplete'] as bool?,
      initEdit: json['initEdit'] as int?,
    );

Map<String, dynamic> _$JUserModelToJson(JUserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'email': instance.email,
      'phone': instance.phone,
      'city': instance.city,
      'location': instance.location?.toJson(),
      'bloodGroup': _$BloodGroupEnumMap[instance.bloodGroup],
      'userType': _$UserTypeEnumMap[instance.userType],
      'eligible': instance.eligible,
      'formComplete': instance.formComplete,
      'initEdit': instance.initEdit,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
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

const _$UserTypeEnumMap = {
  UserType.donor: 'donor',
  UserType.recipient: 'recipient',
};
