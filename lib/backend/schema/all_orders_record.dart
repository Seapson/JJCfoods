import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllOrdersRecord extends FirestoreRecord {
  AllOrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Createed_at" field.
  DateTime? _createedAt;
  DateTime? get createedAt => _createedAt;
  bool hasCreateedAt() => _createedAt != null;

  void _initializeFields() {
    _user = snapshotData['User'] as DocumentReference?;
    _createedAt = snapshotData['Createed_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AllOrders');

  static Stream<AllOrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllOrdersRecord.fromSnapshot(s));

  static Future<AllOrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllOrdersRecord.fromSnapshot(s));

  static AllOrdersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllOrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllOrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllOrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllOrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllOrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllOrdersRecordData({
  DocumentReference? user,
  DateTime? createedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User': user,
      'Createed_at': createedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllOrdersRecordDocumentEquality implements Equality<AllOrdersRecord> {
  const AllOrdersRecordDocumentEquality();

  @override
  bool equals(AllOrdersRecord? e1, AllOrdersRecord? e2) {
    return e1?.user == e2?.user && e1?.createedAt == e2?.createedAt;
  }

  @override
  int hash(AllOrdersRecord? e) =>
      const ListEquality().hash([e?.user, e?.createedAt]);

  @override
  bool isValidKey(Object? o) => o is AllOrdersRecord;
}
