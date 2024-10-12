import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductImagesRecord extends FirestoreRecord {
  ProductImagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  void _initializeFields() {
    _images = getDataList(snapshotData['Images']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductImages');

  static Stream<ProductImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductImagesRecord.fromSnapshot(s));

  static Future<ProductImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductImagesRecord.fromSnapshot(s));

  static ProductImagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductImagesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ProductImagesRecordDocumentEquality
    implements Equality<ProductImagesRecord> {
  const ProductImagesRecordDocumentEquality();

  @override
  bool equals(ProductImagesRecord? e1, ProductImagesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.images, e2?.images);
  }

  @override
  int hash(ProductImagesRecord? e) => const ListEquality().hash([e?.images]);

  @override
  bool isValidKey(Object? o) => o is ProductImagesRecord;
}
