import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrxtrflistRecord extends FirestoreRecord {
  TrxtrflistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TRFList" field.
  List<String>? _tRFList;
  List<String> get tRFList => _tRFList ?? const [];
  bool hasTRFList() => _tRFList != null;

  void _initializeFields() {
    _tRFList = getDataList(snapshotData['TRFList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TRXTRFLIST');

  static Stream<TrxtrflistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrxtrflistRecord.fromSnapshot(s));

  static Future<TrxtrflistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrxtrflistRecord.fromSnapshot(s));

  static TrxtrflistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrxtrflistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrxtrflistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrxtrflistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrxtrflistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrxtrflistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrxtrflistRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class TrxtrflistRecordDocumentEquality implements Equality<TrxtrflistRecord> {
  const TrxtrflistRecordDocumentEquality();

  @override
  bool equals(TrxtrflistRecord? e1, TrxtrflistRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.tRFList, e2?.tRFList);
  }

  @override
  int hash(TrxtrflistRecord? e) => const ListEquality().hash([e?.tRFList]);

  @override
  bool isValidKey(Object? o) => o is TrxtrflistRecord;
}
