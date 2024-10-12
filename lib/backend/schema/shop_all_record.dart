import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopAllRecord extends FirestoreRecord {
  ShopAllRecord._(
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

  // "Condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "Transmission" field.
  String? _transmission;
  String get transmission => _transmission ?? '';
  bool hasTransmission() => _transmission != null;

  // "Negotiable" field.
  String? _negotiable;
  String get negotiable => _negotiable ?? '';
  bool hasNegotiable() => _negotiable != null;

  // "Model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "YearOfManufacture" field.
  String? _yearOfManufacture;
  String get yearOfManufacture => _yearOfManufacture ?? '';
  bool hasYearOfManufacture() => _yearOfManufacture != null;

  // "Mileage" field.
  int? _mileage;
  int get mileage => _mileage ?? 0;
  bool hasMileage() => _mileage != null;

  // "Seats" field.
  int? _seats;
  int get seats => _seats ?? 0;
  bool hasSeats() => _seats != null;

  // "Cylinders" field.
  int? _cylinders;
  int get cylinders => _cylinders ?? 0;
  bool hasCylinders() => _cylinders != null;

  // "Trim" field.
  String? _trim;
  String get trim => _trim ?? '';
  bool hasTrim() => _trim != null;

  // "BodyType" field.
  String? _bodyType;
  String get bodyType => _bodyType ?? '';
  bool hasBodyType() => _bodyType != null;

  // "VIN" field.
  String? _vin;
  String get vin => _vin ?? '';
  bool hasVin() => _vin != null;

  // "YoutubeLink" field.
  String? _youtubeLink;
  String get youtubeLink => _youtubeLink ?? '';
  bool hasYoutubeLink() => _youtubeLink != null;

  // "RAM" field.
  String? _ram;
  String get ram => _ram ?? '';
  bool hasRam() => _ram != null;

  // "Storage" field.
  String? _storage;
  String get storage => _storage ?? '';
  bool hasStorage() => _storage != null;

  // "StorageType" field.
  String? _storageType;
  String get storageType => _storageType ?? '';
  bool hasStorageType() => _storageType != null;

  // "Processor" field.
  String? _processor;
  String get processor => _processor ?? '';
  bool hasProcessor() => _processor != null;

  // "Core" field.
  String? _core;
  String get core => _core ?? '';
  bool hasCore() => _core != null;

  // "GraphicsCard" field.
  String? _graphicsCard;
  String get graphicsCard => _graphicsCard ?? '';
  bool hasGraphicsCard() => _graphicsCard != null;

  // "OperatingSystem" field.
  String? _operatingSystem;
  String get operatingSystem => _operatingSystem ?? '';
  bool hasOperatingSystem() => _operatingSystem != null;

  // "Exchange" field.
  String? _exchange;
  String get exchange => _exchange ?? '';
  bool hasExchange() => _exchange != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "FrontCamera" field.
  String? _frontCamera;
  String get frontCamera => _frontCamera ?? '';
  bool hasFrontCamera() => _frontCamera != null;

  // "BackCamera" field.
  String? _backCamera;
  String get backCamera => _backCamera ?? '';
  bool hasBackCamera() => _backCamera != null;

  // "SimSlot" field.
  String? _simSlot;
  String get simSlot => _simSlot ?? '';
  bool hasSimSlot() => _simSlot != null;

  // "CardSlot" field.
  String? _cardSlot;
  String get cardSlot => _cardSlot ?? '';
  bool hasCardSlot() => _cardSlot != null;

  // "Battery" field.
  String? _battery;
  String get battery => _battery ?? '';
  bool hasBattery() => _battery != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "PricePer" field.
  String? _pricePer;
  String get pricePer => _pricePer ?? '';
  bool hasPricePer() => _pricePer != null;

  // "Sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

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
    _condition = snapshotData['Condition'] as String?;
    _transmission = snapshotData['Transmission'] as String?;
    _negotiable = snapshotData['Negotiable'] as String?;
    _model = snapshotData['Model'] as String?;
    _yearOfManufacture = snapshotData['YearOfManufacture'] as String?;
    _mileage = castToType<int>(snapshotData['Mileage']);
    _seats = castToType<int>(snapshotData['Seats']);
    _cylinders = castToType<int>(snapshotData['Cylinders']);
    _trim = snapshotData['Trim'] as String?;
    _bodyType = snapshotData['BodyType'] as String?;
    _vin = snapshotData['VIN'] as String?;
    _youtubeLink = snapshotData['YoutubeLink'] as String?;
    _ram = snapshotData['RAM'] as String?;
    _storage = snapshotData['Storage'] as String?;
    _storageType = snapshotData['StorageType'] as String?;
    _processor = snapshotData['Processor'] as String?;
    _core = snapshotData['Core'] as String?;
    _graphicsCard = snapshotData['GraphicsCard'] as String?;
    _operatingSystem = snapshotData['OperatingSystem'] as String?;
    _exchange = snapshotData['Exchange'] as String?;
    _color = snapshotData['Color'] as String?;
    _frontCamera = snapshotData['FrontCamera'] as String?;
    _backCamera = snapshotData['BackCamera'] as String?;
    _simSlot = snapshotData['SimSlot'] as String?;
    _cardSlot = snapshotData['CardSlot'] as String?;
    _battery = snapshotData['Battery'] as String?;
    _title = snapshotData['Title'] as String?;
    _type = snapshotData['Type'] as String?;
    _pricePer = snapshotData['PricePer'] as String?;
    _sex = snapshotData['Sex'] as String?;
    _age = snapshotData['Age'] as String?;
    _wholesaleorRetail = snapshotData['WholesaleorRetail'] as String?;
    _bigorSmall = snapshotData['BigorSmall'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ShopAll');

  static Stream<ShopAllRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopAllRecord.fromSnapshot(s));

  static Future<ShopAllRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopAllRecord.fromSnapshot(s));

  static ShopAllRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShopAllRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopAllRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopAllRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopAllRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopAllRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopAllRecordData({
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
  String? condition,
  String? transmission,
  String? negotiable,
  String? model,
  String? yearOfManufacture,
  int? mileage,
  int? seats,
  int? cylinders,
  String? trim,
  String? bodyType,
  String? vin,
  String? youtubeLink,
  String? ram,
  String? storage,
  String? storageType,
  String? processor,
  String? core,
  String? graphicsCard,
  String? operatingSystem,
  String? exchange,
  String? color,
  String? frontCamera,
  String? backCamera,
  String? simSlot,
  String? cardSlot,
  String? battery,
  String? title,
  String? type,
  String? pricePer,
  String? sex,
  String? age,
  String? wholesaleorRetail,
  bool? bigorSmall,
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
      'Condition': condition,
      'Transmission': transmission,
      'Negotiable': negotiable,
      'Model': model,
      'YearOfManufacture': yearOfManufacture,
      'Mileage': mileage,
      'Seats': seats,
      'Cylinders': cylinders,
      'Trim': trim,
      'BodyType': bodyType,
      'VIN': vin,
      'YoutubeLink': youtubeLink,
      'RAM': ram,
      'Storage': storage,
      'StorageType': storageType,
      'Processor': processor,
      'Core': core,
      'GraphicsCard': graphicsCard,
      'OperatingSystem': operatingSystem,
      'Exchange': exchange,
      'Color': color,
      'FrontCamera': frontCamera,
      'BackCamera': backCamera,
      'SimSlot': simSlot,
      'CardSlot': cardSlot,
      'Battery': battery,
      'Title': title,
      'Type': type,
      'PricePer': pricePer,
      'Sex': sex,
      'Age': age,
      'WholesaleorRetail': wholesaleorRetail,
      'BigorSmall': bigorSmall,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopAllRecordDocumentEquality implements Equality<ShopAllRecord> {
  const ShopAllRecordDocumentEquality();

  @override
  bool equals(ShopAllRecord? e1, ShopAllRecord? e2) {
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
        e1?.condition == e2?.condition &&
        e1?.transmission == e2?.transmission &&
        e1?.negotiable == e2?.negotiable &&
        e1?.model == e2?.model &&
        e1?.yearOfManufacture == e2?.yearOfManufacture &&
        e1?.mileage == e2?.mileage &&
        e1?.seats == e2?.seats &&
        e1?.cylinders == e2?.cylinders &&
        e1?.trim == e2?.trim &&
        e1?.bodyType == e2?.bodyType &&
        e1?.vin == e2?.vin &&
        e1?.youtubeLink == e2?.youtubeLink &&
        e1?.ram == e2?.ram &&
        e1?.storage == e2?.storage &&
        e1?.storageType == e2?.storageType &&
        e1?.processor == e2?.processor &&
        e1?.core == e2?.core &&
        e1?.graphicsCard == e2?.graphicsCard &&
        e1?.operatingSystem == e2?.operatingSystem &&
        e1?.exchange == e2?.exchange &&
        e1?.color == e2?.color &&
        e1?.frontCamera == e2?.frontCamera &&
        e1?.backCamera == e2?.backCamera &&
        e1?.simSlot == e2?.simSlot &&
        e1?.cardSlot == e2?.cardSlot &&
        e1?.battery == e2?.battery &&
        e1?.title == e2?.title &&
        e1?.type == e2?.type &&
        e1?.pricePer == e2?.pricePer &&
        e1?.sex == e2?.sex &&
        e1?.age == e2?.age &&
        e1?.wholesaleorRetail == e2?.wholesaleorRetail &&
        e1?.bigorSmall == e2?.bigorSmall;
  }

  @override
  int hash(ShopAllRecord? e) => const ListEquality().hash([
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
        e?.condition,
        e?.transmission,
        e?.negotiable,
        e?.model,
        e?.yearOfManufacture,
        e?.mileage,
        e?.seats,
        e?.cylinders,
        e?.trim,
        e?.bodyType,
        e?.vin,
        e?.youtubeLink,
        e?.ram,
        e?.storage,
        e?.storageType,
        e?.processor,
        e?.core,
        e?.graphicsCard,
        e?.operatingSystem,
        e?.exchange,
        e?.color,
        e?.frontCamera,
        e?.backCamera,
        e?.simSlot,
        e?.cardSlot,
        e?.battery,
        e?.title,
        e?.type,
        e?.pricePer,
        e?.sex,
        e?.age,
        e?.wholesaleorRetail,
        e?.bigorSmall
      ]);

  @override
  bool isValidKey(Object? o) => o is ShopAllRecord;
}
