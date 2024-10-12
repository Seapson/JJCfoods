import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BestSellersRecord extends FirestoreRecord {
  BestSellersRecord._(
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

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "isLiked" field.
  bool? _isLiked;
  bool get isLiked => _isLiked ?? false;
  bool hasIsLiked() => _isLiked != null;

  // "isNewArrival" field.
  bool? _isNewArrival;
  bool get isNewArrival => _isNewArrival ?? false;
  bool hasIsNewArrival() => _isNewArrival != null;

  // "isBestSeller" field.
  bool? _isBestSeller;
  bool get isBestSeller => _isBestSeller ?? false;
  bool hasIsBestSeller() => _isBestSeller != null;

  // "NegPrice" field.
  double? _negPrice;
  double get negPrice => _negPrice ?? 0.0;
  bool hasNegPrice() => _negPrice != null;

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

  // "PricePer" field.
  String? _pricePer;
  String get pricePer => _pricePer ?? '';
  bool hasPricePer() => _pricePer != null;

  // "Age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "WholesaleorRetail" field.
  String? _wholesaleorRetail;
  String get wholesaleorRetail => _wholesaleorRetail ?? '';
  bool hasWholesaleorRetail() => _wholesaleorRetail != null;

  // "BigorSmall" field.
  bool? _bigorSmall;
  bool get bigorSmall => _bigorSmall ?? false;
  bool hasBigorSmall() => _bigorSmall != null;

  // "Size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "CashierName" field.
  String? _cashierName;
  String get cashierName => _cashierName ?? '';
  bool hasCashierName() => _cashierName != null;

  // "SalesRepName" field.
  String? _salesRepName;
  String get salesRepName => _salesRepName ?? '';
  bool hasSalesRepName() => _salesRepName != null;

  // "isCarted" field.
  bool? _isCarted;
  bool get isCarted => _isCarted ?? false;
  bool hasIsCarted() => _isCarted != null;

  // "TRX" field.
  String? _trx;
  String get trx => _trx ?? '';
  bool hasTrx() => _trx != null;

  // "QuantitySold" field.
  int? _quantitySold;
  int get quantitySold => _quantitySold ?? 0;
  bool hasQuantitySold() => _quantitySold != null;

  // "Color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _image = snapshotData['image'] as String?;
    _isLiked = snapshotData['isLiked'] as bool?;
    _isNewArrival = snapshotData['isNewArrival'] as bool?;
    _isBestSeller = snapshotData['isBestSeller'] as bool?;
    _negPrice = castToType<double>(snapshotData['NegPrice']);
    _category = snapshotData['category'] as String?;
    _location = snapshotData['Location'] as String?;
    _title = snapshotData['Title'] as String?;
    _pricePer = snapshotData['PricePer'] as String?;
    _age = snapshotData['Age'] as String?;
    _wholesaleorRetail = snapshotData['WholesaleorRetail'] as String?;
    _bigorSmall = snapshotData['BigorSmall'] as bool?;
    _size = snapshotData['Size'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _brand = snapshotData['Brand'] as String?;
    _cashierName = snapshotData['CashierName'] as String?;
    _salesRepName = snapshotData['SalesRepName'] as String?;
    _isCarted = snapshotData['isCarted'] as bool?;
    _trx = snapshotData['TRX'] as String?;
    _quantitySold = castToType<int>(snapshotData['QuantitySold']);
    _color = getSchemaColor(snapshotData['Color']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BestSellers');

  static Stream<BestSellersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BestSellersRecord.fromSnapshot(s));

  static Future<BestSellersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BestSellersRecord.fromSnapshot(s));

  static BestSellersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BestSellersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BestSellersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BestSellersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BestSellersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BestSellersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBestSellersRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? image,
  bool? isLiked,
  bool? isNewArrival,
  bool? isBestSeller,
  double? negPrice,
  String? category,
  String? location,
  String? title,
  String? pricePer,
  String? age,
  String? wholesaleorRetail,
  bool? bigorSmall,
  String? size,
  DocumentReference? user,
  String? brand,
  String? cashierName,
  String? salesRepName,
  bool? isCarted,
  String? trx,
  int? quantitySold,
  Color? color,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'image': image,
      'isLiked': isLiked,
      'isNewArrival': isNewArrival,
      'isBestSeller': isBestSeller,
      'NegPrice': negPrice,
      'category': category,
      'Location': location,
      'Title': title,
      'PricePer': pricePer,
      'Age': age,
      'WholesaleorRetail': wholesaleorRetail,
      'BigorSmall': bigorSmall,
      'Size': size,
      'user': user,
      'Brand': brand,
      'CashierName': cashierName,
      'SalesRepName': salesRepName,
      'isCarted': isCarted,
      'TRX': trx,
      'QuantitySold': quantitySold,
      'Color': color,
    }.withoutNulls,
  );

  return firestoreData;
}

class BestSellersRecordDocumentEquality implements Equality<BestSellersRecord> {
  const BestSellersRecordDocumentEquality();

  @override
  bool equals(BestSellersRecord? e1, BestSellersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.image == e2?.image &&
        e1?.isLiked == e2?.isLiked &&
        e1?.isNewArrival == e2?.isNewArrival &&
        e1?.isBestSeller == e2?.isBestSeller &&
        e1?.negPrice == e2?.negPrice &&
        e1?.category == e2?.category &&
        e1?.location == e2?.location &&
        e1?.title == e2?.title &&
        e1?.pricePer == e2?.pricePer &&
        e1?.age == e2?.age &&
        e1?.wholesaleorRetail == e2?.wholesaleorRetail &&
        e1?.bigorSmall == e2?.bigorSmall &&
        e1?.size == e2?.size &&
        e1?.user == e2?.user &&
        e1?.brand == e2?.brand &&
        e1?.cashierName == e2?.cashierName &&
        e1?.salesRepName == e2?.salesRepName &&
        e1?.isCarted == e2?.isCarted &&
        e1?.trx == e2?.trx &&
        e1?.quantitySold == e2?.quantitySold &&
        e1?.color == e2?.color;
  }

  @override
  int hash(BestSellersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.image,
        e?.isLiked,
        e?.isNewArrival,
        e?.isBestSeller,
        e?.negPrice,
        e?.category,
        e?.location,
        e?.title,
        e?.pricePer,
        e?.age,
        e?.wholesaleorRetail,
        e?.bigorSmall,
        e?.size,
        e?.user,
        e?.brand,
        e?.cashierName,
        e?.salesRepName,
        e?.isCarted,
        e?.trx,
        e?.quantitySold,
        e?.color
      ]);

  @override
  bool isValidKey(Object? o) => o is BestSellersRecord;
}
