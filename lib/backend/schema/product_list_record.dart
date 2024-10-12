import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductListRecord extends FirestoreRecord {
  ProductListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ProductList" field.
  List<String>? _productList;
  List<String> get productList => _productList ?? const [];
  bool hasProductList() => _productList != null;

  // "Cash" field.
  double? _cash;
  double get cash => _cash ?? 0.0;
  bool hasCash() => _cash != null;

  // "Pos" field.
  double? _pos;
  double get pos => _pos ?? 0.0;
  bool hasPos() => _pos != null;

  // "Transfer" field.
  double? _transfer;
  double get transfer => _transfer ?? 0.0;
  bool hasTransfer() => _transfer != null;

  // "Online" field.
  double? _online;
  double get online => _online ?? 0.0;
  bool hasOnline() => _online != null;

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "PaymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "Expenses" field.
  double? _expenses;
  double get expenses => _expenses ?? 0.0;
  bool hasExpenses() => _expenses != null;

  // "StageredHeight" field.
  int? _stageredHeight;
  int get stageredHeight => _stageredHeight ?? 0;
  bool hasStageredHeight() => _stageredHeight != null;

  // "ProductsCount" field.
  int? _productsCount;
  int get productsCount => _productsCount ?? 0;
  bool hasProductsCount() => _productsCount != null;

  // "FoodBannerList" field.
  List<String>? _foodBannerList;
  List<String> get foodBannerList => _foodBannerList ?? const [];
  bool hasFoodBannerList() => _foodBannerList != null;

  // "TRXlist" field.
  List<String>? _tRXlist;
  List<String> get tRXlist => _tRXlist ?? const [];
  bool hasTRXlist() => _tRXlist != null;

  // "SupremeNoodlesPrice" field.
  double? _supremeNoodlesPrice;
  double get supremeNoodlesPrice => _supremeNoodlesPrice ?? 0.0;
  bool hasSupremeNoodlesPrice() => _supremeNoodlesPrice != null;

  // "EggPrice" field.
  double? _eggPrice;
  double get eggPrice => _eggPrice ?? 0.0;
  bool hasEggPrice() => _eggPrice != null;

  // "PlantainPrice" field.
  double? _plantainPrice;
  double get plantainPrice => _plantainPrice ?? 0.0;
  bool hasPlantainPrice() => _plantainPrice != null;

  // "ChickenPrice" field.
  double? _chickenPrice;
  double get chickenPrice => _chickenPrice ?? 0.0;
  bool hasChickenPrice() => _chickenPrice != null;

  // "SaladPrice" field.
  double? _saladPrice;
  double get saladPrice => _saladPrice ?? 0.0;
  bool hasSaladPrice() => _saladPrice != null;

  // "Egg" field.
  bool? _egg;
  bool get egg => _egg ?? false;
  bool hasEgg() => _egg != null;

  // "Plantain" field.
  bool? _plantain;
  bool get plantain => _plantain ?? false;
  bool hasPlantain() => _plantain != null;

  // "Chicken" field.
  bool? _chicken;
  bool get chicken => _chicken ?? false;
  bool hasChicken() => _chicken != null;

  // "Salad" field.
  bool? _salad;
  bool get salad => _salad ?? false;
  bool hasSalad() => _salad != null;

  // "SupremeNoodles" field.
  bool? _supremeNoodles;
  bool get supremeNoodles => _supremeNoodles ?? false;
  bool hasSupremeNoodles() => _supremeNoodles != null;

  // "Indomitables70gramsPrice" field.
  double? _indomitables70gramsPrice;
  double get indomitables70gramsPrice => _indomitables70gramsPrice ?? 0.0;
  bool hasIndomitables70gramsPrice() => _indomitables70gramsPrice != null;

  // "EwaAgoyinPrice" field.
  double? _ewaAgoyinPrice;
  double get ewaAgoyinPrice => _ewaAgoyinPrice ?? 0.0;
  bool hasEwaAgoyinPrice() => _ewaAgoyinPrice != null;

  // "JJCcustomers" field.
  List<DocumentReference>? _jJCcustomers;
  List<DocumentReference> get jJCcustomers => _jJCcustomers ?? const [];
  bool hasJJCcustomers() => _jJCcustomers != null;

  // "JJCdeliveryPrice" field.
  double? _jJCdeliveryPrice;
  double get jJCdeliveryPrice => _jJCdeliveryPrice ?? 0.0;
  bool hasJJCdeliveryPrice() => _jJCdeliveryPrice != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _productList = getDataList(snapshotData['ProductList']);
    _cash = castToType<double>(snapshotData['Cash']);
    _pos = castToType<double>(snapshotData['Pos']);
    _transfer = castToType<double>(snapshotData['Transfer']);
    _online = castToType<double>(snapshotData['Online']);
    _total = castToType<double>(snapshotData['Total']);
    _paymentMethod = snapshotData['PaymentMethod'] as String?;
    _expenses = castToType<double>(snapshotData['Expenses']);
    _stageredHeight = castToType<int>(snapshotData['StageredHeight']);
    _productsCount = castToType<int>(snapshotData['ProductsCount']);
    _foodBannerList = getDataList(snapshotData['FoodBannerList']);
    _tRXlist = getDataList(snapshotData['TRXlist']);
    _supremeNoodlesPrice =
        castToType<double>(snapshotData['SupremeNoodlesPrice']);
    _eggPrice = castToType<double>(snapshotData['EggPrice']);
    _plantainPrice = castToType<double>(snapshotData['PlantainPrice']);
    _chickenPrice = castToType<double>(snapshotData['ChickenPrice']);
    _saladPrice = castToType<double>(snapshotData['SaladPrice']);
    _egg = snapshotData['Egg'] as bool?;
    _plantain = snapshotData['Plantain'] as bool?;
    _chicken = snapshotData['Chicken'] as bool?;
    _salad = snapshotData['Salad'] as bool?;
    _supremeNoodles = snapshotData['SupremeNoodles'] as bool?;
    _indomitables70gramsPrice =
        castToType<double>(snapshotData['Indomitables70gramsPrice']);
    _ewaAgoyinPrice = castToType<double>(snapshotData['EwaAgoyinPrice']);
    _jJCcustomers = getDataList(snapshotData['JJCcustomers']);
    _jJCdeliveryPrice = castToType<double>(snapshotData['JJCdeliveryPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductList');

  static Stream<ProductListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductListRecord.fromSnapshot(s));

  static Future<ProductListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductListRecord.fromSnapshot(s));

  static ProductListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductListRecordData({
  String? name,
  double? cash,
  double? pos,
  double? transfer,
  double? online,
  double? total,
  String? paymentMethod,
  double? expenses,
  int? stageredHeight,
  int? productsCount,
  double? supremeNoodlesPrice,
  double? eggPrice,
  double? plantainPrice,
  double? chickenPrice,
  double? saladPrice,
  bool? egg,
  bool? plantain,
  bool? chicken,
  bool? salad,
  bool? supremeNoodles,
  double? indomitables70gramsPrice,
  double? ewaAgoyinPrice,
  double? jJCdeliveryPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Cash': cash,
      'Pos': pos,
      'Transfer': transfer,
      'Online': online,
      'Total': total,
      'PaymentMethod': paymentMethod,
      'Expenses': expenses,
      'StageredHeight': stageredHeight,
      'ProductsCount': productsCount,
      'SupremeNoodlesPrice': supremeNoodlesPrice,
      'EggPrice': eggPrice,
      'PlantainPrice': plantainPrice,
      'ChickenPrice': chickenPrice,
      'SaladPrice': saladPrice,
      'Egg': egg,
      'Plantain': plantain,
      'Chicken': chicken,
      'Salad': salad,
      'SupremeNoodles': supremeNoodles,
      'Indomitables70gramsPrice': indomitables70gramsPrice,
      'EwaAgoyinPrice': ewaAgoyinPrice,
      'JJCdeliveryPrice': jJCdeliveryPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductListRecordDocumentEquality implements Equality<ProductListRecord> {
  const ProductListRecordDocumentEquality();

  @override
  bool equals(ProductListRecord? e1, ProductListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.productList, e2?.productList) &&
        e1?.cash == e2?.cash &&
        e1?.pos == e2?.pos &&
        e1?.transfer == e2?.transfer &&
        e1?.online == e2?.online &&
        e1?.total == e2?.total &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.expenses == e2?.expenses &&
        e1?.stageredHeight == e2?.stageredHeight &&
        e1?.productsCount == e2?.productsCount &&
        listEquality.equals(e1?.foodBannerList, e2?.foodBannerList) &&
        listEquality.equals(e1?.tRXlist, e2?.tRXlist) &&
        e1?.supremeNoodlesPrice == e2?.supremeNoodlesPrice &&
        e1?.eggPrice == e2?.eggPrice &&
        e1?.plantainPrice == e2?.plantainPrice &&
        e1?.chickenPrice == e2?.chickenPrice &&
        e1?.saladPrice == e2?.saladPrice &&
        e1?.egg == e2?.egg &&
        e1?.plantain == e2?.plantain &&
        e1?.chicken == e2?.chicken &&
        e1?.salad == e2?.salad &&
        e1?.supremeNoodles == e2?.supremeNoodles &&
        e1?.indomitables70gramsPrice == e2?.indomitables70gramsPrice &&
        e1?.ewaAgoyinPrice == e2?.ewaAgoyinPrice &&
        listEquality.equals(e1?.jJCcustomers, e2?.jJCcustomers) &&
        e1?.jJCdeliveryPrice == e2?.jJCdeliveryPrice;
  }

  @override
  int hash(ProductListRecord? e) => const ListEquality().hash([
        e?.name,
        e?.productList,
        e?.cash,
        e?.pos,
        e?.transfer,
        e?.online,
        e?.total,
        e?.paymentMethod,
        e?.expenses,
        e?.stageredHeight,
        e?.productsCount,
        e?.foodBannerList,
        e?.tRXlist,
        e?.supremeNoodlesPrice,
        e?.eggPrice,
        e?.plantainPrice,
        e?.chickenPrice,
        e?.saladPrice,
        e?.egg,
        e?.plantain,
        e?.chicken,
        e?.salad,
        e?.supremeNoodles,
        e?.indomitables70gramsPrice,
        e?.ewaAgoyinPrice,
        e?.jJCcustomers,
        e?.jJCdeliveryPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductListRecord;
}
