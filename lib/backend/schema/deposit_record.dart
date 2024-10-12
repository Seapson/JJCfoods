import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepositRecord extends FirestoreRecord {
  DepositRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "Accountname" field.
  String? _accountname;
  String get accountname => _accountname ?? '';
  bool hasAccountname() => _accountname != null;

  // "Accountnumber" field.
  int? _accountnumber;
  int get accountnumber => _accountnumber ?? 0;
  bool hasAccountnumber() => _accountnumber != null;

  // "postuser" field.
  DocumentReference? _postuser;
  DocumentReference? get postuser => _postuser;
  bool hasPostuser() => _postuser != null;

  // "Timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "Postowner" field.
  bool? _postowner;
  bool get postowner => _postowner ?? false;
  bool hasPostowner() => _postowner != null;

  // "Amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "Credited" field.
  bool? _credited;
  bool get credited => _credited ?? false;
  bool hasCredited() => _credited != null;

  // "Creditor" field.
  DocumentReference? _creditor;
  DocumentReference? get creditor => _creditor;
  bool hasCreditor() => _creditor != null;

  void _initializeFields() {
    _bankname = snapshotData['Bankname'] as String?;
    _accountname = snapshotData['Accountname'] as String?;
    _accountnumber = castToType<int>(snapshotData['Accountnumber']);
    _postuser = snapshotData['postuser'] as DocumentReference?;
    _timestamp = snapshotData['Timestamp'] as DateTime?;
    _postowner = snapshotData['Postowner'] as bool?;
    _amount = castToType<int>(snapshotData['Amount']);
    _credited = snapshotData['Credited'] as bool?;
    _creditor = snapshotData['Creditor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Deposit');

  static Stream<DepositRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepositRecord.fromSnapshot(s));

  static Future<DepositRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepositRecord.fromSnapshot(s));

  static DepositRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepositRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepositRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepositRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepositRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepositRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepositRecordData({
  String? bankname,
  String? accountname,
  int? accountnumber,
  DocumentReference? postuser,
  DateTime? timestamp,
  bool? postowner,
  int? amount,
  bool? credited,
  DocumentReference? creditor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Bankname': bankname,
      'Accountname': accountname,
      'Accountnumber': accountnumber,
      'postuser': postuser,
      'Timestamp': timestamp,
      'Postowner': postowner,
      'Amount': amount,
      'Credited': credited,
      'Creditor': creditor,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepositRecordDocumentEquality implements Equality<DepositRecord> {
  const DepositRecordDocumentEquality();

  @override
  bool equals(DepositRecord? e1, DepositRecord? e2) {
    return e1?.bankname == e2?.bankname &&
        e1?.accountname == e2?.accountname &&
        e1?.accountnumber == e2?.accountnumber &&
        e1?.postuser == e2?.postuser &&
        e1?.timestamp == e2?.timestamp &&
        e1?.postowner == e2?.postowner &&
        e1?.amount == e2?.amount &&
        e1?.credited == e2?.credited &&
        e1?.creditor == e2?.creditor;
  }

  @override
  int hash(DepositRecord? e) => const ListEquality().hash([
        e?.bankname,
        e?.accountname,
        e?.accountnumber,
        e?.postuser,
        e?.timestamp,
        e?.postowner,
        e?.amount,
        e?.credited,
        e?.creditor
      ]);

  @override
  bool isValidKey(Object? o) => o is DepositRecord;
}
