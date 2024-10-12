import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductBuyerRecord extends FirestoreRecord {
  ProductBuyerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "TicketCode" field.
  String? _ticketCode;
  String get ticketCode => _ticketCode ?? '';
  bool hasTicketCode() => _ticketCode != null;

  // "UserDetails" field.
  DocumentReference? _userDetails;
  DocumentReference? get userDetails => _userDetails;
  bool hasUserDetails() => _userDetails != null;

  // "TotalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "Ordered" field.
  bool? _ordered;
  bool get ordered => _ordered ?? false;
  bool hasOrdered() => _ordered != null;

  // "Processing" field.
  bool? _processing;
  bool get processing => _processing ?? false;
  bool hasProcessing() => _processing != null;

  // "Ready" field.
  bool? _ready;
  bool get ready => _ready ?? false;
  bool hasReady() => _ready != null;

  // "StaffDetails" field.
  DocumentReference? _staffDetails;
  DocumentReference? get staffDetails => _staffDetails;
  bool hasStaffDetails() => _staffDetails != null;

  // "Delivered" field.
  bool? _delivered;
  bool get delivered => _delivered ?? false;
  bool hasDelivered() => _delivered != null;

  // "TRF" field.
  String? _trf;
  String get trf => _trf ?? '';
  bool hasTrf() => _trf != null;

  // "StaffName" field.
  String? _staffName;
  String get staffName => _staffName ?? '';
  bool hasStaffName() => _staffName != null;

  // "TRX" field.
  List<String>? _trx;
  List<String> get trx => _trx ?? const [];
  bool hasTrx() => _trx != null;

  // "FinalTRF" field.
  String? _finalTRF;
  String get finalTRF => _finalTRF ?? '';
  bool hasFinalTRF() => _finalTRF != null;

  // "FinalTRX" field.
  List<String>? _finalTRX;
  List<String> get finalTRX => _finalTRX ?? const [];
  bool hasFinalTRX() => _finalTRX != null;

  // "PaymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "OrderBy" field.
  String? _orderBy;
  String get orderBy => _orderBy ?? '';
  bool hasOrderBy() => _orderBy != null;

  // "PaymentStatus" field.
  bool? _paymentStatus;
  bool get paymentStatus => _paymentStatus ?? false;
  bool hasPaymentStatus() => _paymentStatus != null;

  // "PaymentCode" field.
  String? _paymentCode;
  String get paymentCode => _paymentCode ?? '';
  bool hasPaymentCode() => _paymentCode != null;

  // "ModifiedAt" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "ProductBuyerRef" field.
  String? _productBuyerRef;
  String get productBuyerRef => _productBuyerRef ?? '';
  bool hasProductBuyerRef() => _productBuyerRef != null;

  // "Successful" field.
  bool? _successful;
  bool get successful => _successful ?? false;
  bool hasSuccessful() => _successful != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _ticketCode = snapshotData['TicketCode'] as String?;
    _userDetails = snapshotData['UserDetails'] as DocumentReference?;
    _totalAmount = castToType<double>(snapshotData['TotalAmount']);
    _ordered = snapshotData['Ordered'] as bool?;
    _processing = snapshotData['Processing'] as bool?;
    _ready = snapshotData['Ready'] as bool?;
    _staffDetails = snapshotData['StaffDetails'] as DocumentReference?;
    _delivered = snapshotData['Delivered'] as bool?;
    _trf = snapshotData['TRF'] as String?;
    _staffName = snapshotData['StaffName'] as String?;
    _trx = getDataList(snapshotData['TRX']);
    _finalTRF = snapshotData['FinalTRF'] as String?;
    _finalTRX = getDataList(snapshotData['FinalTRX']);
    _paymentMethod = snapshotData['PaymentMethod'] as String?;
    _orderBy = snapshotData['OrderBy'] as String?;
    _paymentStatus = snapshotData['PaymentStatus'] as bool?;
    _paymentCode = snapshotData['PaymentCode'] as String?;
    _modifiedAt = snapshotData['ModifiedAt'] as DateTime?;
    _productBuyerRef = snapshotData['ProductBuyerRef'] as String?;
    _successful = snapshotData['Successful'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductBuyer');

  static Stream<ProductBuyerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductBuyerRecord.fromSnapshot(s));

  static Future<ProductBuyerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductBuyerRecord.fromSnapshot(s));

  static ProductBuyerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductBuyerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductBuyerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductBuyerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductBuyerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductBuyerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductBuyerRecordData({
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  String? ticketCode,
  DocumentReference? userDetails,
  double? totalAmount,
  bool? ordered,
  bool? processing,
  bool? ready,
  DocumentReference? staffDetails,
  bool? delivered,
  String? trf,
  String? staffName,
  String? finalTRF,
  String? paymentMethod,
  String? orderBy,
  bool? paymentStatus,
  String? paymentCode,
  DateTime? modifiedAt,
  String? productBuyerRef,
  bool? successful,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_name': userName,
      'TicketCode': ticketCode,
      'UserDetails': userDetails,
      'TotalAmount': totalAmount,
      'Ordered': ordered,
      'Processing': processing,
      'Ready': ready,
      'StaffDetails': staffDetails,
      'Delivered': delivered,
      'TRF': trf,
      'StaffName': staffName,
      'FinalTRF': finalTRF,
      'PaymentMethod': paymentMethod,
      'OrderBy': orderBy,
      'PaymentStatus': paymentStatus,
      'PaymentCode': paymentCode,
      'ModifiedAt': modifiedAt,
      'ProductBuyerRef': productBuyerRef,
      'Successful': successful,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductBuyerRecordDocumentEquality
    implements Equality<ProductBuyerRecord> {
  const ProductBuyerRecordDocumentEquality();

  @override
  bool equals(ProductBuyerRecord? e1, ProductBuyerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.ticketCode == e2?.ticketCode &&
        e1?.userDetails == e2?.userDetails &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.ordered == e2?.ordered &&
        e1?.processing == e2?.processing &&
        e1?.ready == e2?.ready &&
        e1?.staffDetails == e2?.staffDetails &&
        e1?.delivered == e2?.delivered &&
        e1?.trf == e2?.trf &&
        e1?.staffName == e2?.staffName &&
        listEquality.equals(e1?.trx, e2?.trx) &&
        e1?.finalTRF == e2?.finalTRF &&
        listEquality.equals(e1?.finalTRX, e2?.finalTRX) &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.orderBy == e2?.orderBy &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.paymentCode == e2?.paymentCode &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.productBuyerRef == e2?.productBuyerRef &&
        e1?.successful == e2?.successful;
  }

  @override
  int hash(ProductBuyerRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.userName,
        e?.ticketCode,
        e?.userDetails,
        e?.totalAmount,
        e?.ordered,
        e?.processing,
        e?.ready,
        e?.staffDetails,
        e?.delivered,
        e?.trf,
        e?.staffName,
        e?.trx,
        e?.finalTRF,
        e?.finalTRX,
        e?.paymentMethod,
        e?.orderBy,
        e?.paymentStatus,
        e?.paymentCode,
        e?.modifiedAt,
        e?.productBuyerRef,
        e?.successful
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductBuyerRecord;
}
