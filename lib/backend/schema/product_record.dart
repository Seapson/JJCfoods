import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "CategoryAll" field.
  String? _categoryAll;
  String get categoryAll => _categoryAll ?? '';
  bool hasCategoryAll() => _categoryAll != null;

  // "Delivery" field.
  String? _delivery;
  String get delivery => _delivery ?? '';
  bool hasDelivery() => _delivery != null;

  // "DeliveryAmount" field.
  double? _deliveryAmount;
  double get deliveryAmount => _deliveryAmount ?? 0.0;
  bool hasDeliveryAmount() => _deliveryAmount != null;

  // "Packaging" field.
  String? _packaging;
  String get packaging => _packaging ?? '';
  bool hasPackaging() => _packaging != null;

  // "Company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _image = snapshotData['image'] as String?;
    _category = snapshotData['category'] as String?;
    _location = snapshotData['Location'] as String?;
    _title = snapshotData['Title'] as String?;
    _size = snapshotData['Size'] as String?;
    _categoryAll = snapshotData['CategoryAll'] as String?;
    _delivery = snapshotData['Delivery'] as String?;
    _deliveryAmount = castToType<double>(snapshotData['DeliveryAmount']);
    _packaging = snapshotData['Packaging'] as String?;
    _company = snapshotData['Company'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  int? quantity,
  String? image,
  String? category,
  String? location,
  String? title,
  String? size,
  String? categoryAll,
  String? delivery,
  double? deliveryAmount,
  String? packaging,
  String? company,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'quantity': quantity,
      'image': image,
      'category': category,
      'Location': location,
      'Title': title,
      'Size': size,
      'CategoryAll': categoryAll,
      'Delivery': delivery,
      'DeliveryAmount': deliveryAmount,
      'Packaging': packaging,
      'Company': company,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.quantity == e2?.quantity &&
        e1?.image == e2?.image &&
        e1?.category == e2?.category &&
        e1?.location == e2?.location &&
        e1?.title == e2?.title &&
        e1?.size == e2?.size &&
        e1?.categoryAll == e2?.categoryAll &&
        e1?.delivery == e2?.delivery &&
        e1?.deliveryAmount == e2?.deliveryAmount &&
        e1?.packaging == e2?.packaging &&
        e1?.company == e2?.company;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.createdAt,
        e?.quantity,
        e?.image,
        e?.category,
        e?.location,
        e?.title,
        e?.size,
        e?.categoryAll,
        e?.delivery,
        e?.deliveryAmount,
        e?.packaging,
        e?.company
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
