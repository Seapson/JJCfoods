import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodBannerRecord extends FirestoreRecord {
  FoodBannerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "IsActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "NoOfBanner" field.
  int? _noOfBanner;
  int get noOfBanner => _noOfBanner ?? 0;
  bool hasNoOfBanner() => _noOfBanner != null;

  // "BlurHash" field.
  String? _blurHash;
  String get blurHash => _blurHash ?? '';
  bool hasBlurHash() => _blurHash != null;

  // "Company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _title = snapshotData['Title'] as String?;
    _isActive = snapshotData['IsActive'] as bool?;
    _image = snapshotData['Image'] as String?;
    _noOfBanner = castToType<int>(snapshotData['NoOfBanner']);
    _blurHash = snapshotData['BlurHash'] as String?;
    _company = snapshotData['Company'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FoodBanner');

  static Stream<FoodBannerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodBannerRecord.fromSnapshot(s));

  static Future<FoodBannerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodBannerRecord.fromSnapshot(s));

  static FoodBannerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodBannerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodBannerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodBannerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodBannerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodBannerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodBannerRecordData({
  DateTime? createdAt,
  String? title,
  bool? isActive,
  String? image,
  int? noOfBanner,
  String? blurHash,
  String? company,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'Title': title,
      'IsActive': isActive,
      'Image': image,
      'NoOfBanner': noOfBanner,
      'BlurHash': blurHash,
      'Company': company,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodBannerRecordDocumentEquality implements Equality<FoodBannerRecord> {
  const FoodBannerRecordDocumentEquality();

  @override
  bool equals(FoodBannerRecord? e1, FoodBannerRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.title == e2?.title &&
        e1?.isActive == e2?.isActive &&
        e1?.image == e2?.image &&
        e1?.noOfBanner == e2?.noOfBanner &&
        e1?.blurHash == e2?.blurHash &&
        e1?.company == e2?.company;
  }

  @override
  int hash(FoodBannerRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.title,
        e?.isActive,
        e?.image,
        e?.noOfBanner,
        e?.blurHash,
        e?.company
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodBannerRecord;
}
