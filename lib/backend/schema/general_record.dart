import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralRecord extends FirestoreRecord {
  GeneralRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Badge" field.
  int? _badge;
  int get badge => _badge ?? 0;
  bool hasBadge() => _badge != null;

  // "AppUsers" field.
  List<DocumentReference>? _appUsers;
  List<DocumentReference> get appUsers => _appUsers ?? const [];
  bool hasAppUsers() => _appUsers != null;

  // "TotalUsers" field.
  int? _totalUsers;
  int get totalUsers => _totalUsers ?? 0;
  bool hasTotalUsers() => _totalUsers != null;

  void _initializeFields() {
    _badge = castToType<int>(snapshotData['Badge']);
    _appUsers = getDataList(snapshotData['AppUsers']);
    _totalUsers = castToType<int>(snapshotData['TotalUsers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('General');

  static Stream<GeneralRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GeneralRecord.fromSnapshot(s));

  static Future<GeneralRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GeneralRecord.fromSnapshot(s));

  static GeneralRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GeneralRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GeneralRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GeneralRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GeneralRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GeneralRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGeneralRecordData({
  int? badge,
  int? totalUsers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Badge': badge,
      'TotalUsers': totalUsers,
    }.withoutNulls,
  );

  return firestoreData;
}

class GeneralRecordDocumentEquality implements Equality<GeneralRecord> {
  const GeneralRecordDocumentEquality();

  @override
  bool equals(GeneralRecord? e1, GeneralRecord? e2) {
    const listEquality = ListEquality();
    return e1?.badge == e2?.badge &&
        listEquality.equals(e1?.appUsers, e2?.appUsers) &&
        e1?.totalUsers == e2?.totalUsers;
  }

  @override
  int hash(GeneralRecord? e) =>
      const ListEquality().hash([e?.badge, e?.appUsers, e?.totalUsers]);

  @override
  bool isValidKey(Object? o) => o is GeneralRecord;
}
