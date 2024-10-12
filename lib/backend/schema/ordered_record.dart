import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderedRecord extends FirestoreRecord {
  OrderedRecord._(
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

  // "TicketCode" field.
  String? _ticketCode;
  String get ticketCode => _ticketCode ?? '';
  bool hasTicketCode() => _ticketCode != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Ready" field.
  bool? _ready;
  bool get ready => _ready ?? false;
  bool hasReady() => _ready != null;

  // "Customer" field.
  List<DocumentReference>? _customer;
  List<DocumentReference> get customer => _customer ?? const [];
  bool hasCustomer() => _customer != null;

  // "Delivered" field.
  bool? _delivered;
  bool get delivered => _delivered ?? false;
  bool hasDelivered() => _delivered != null;

  // "Processing" field.
  bool? _processing;
  bool get processing => _processing ?? false;
  bool hasProcessing() => _processing != null;

  // "companydetails" field.
  DocumentReference? _companydetails;
  DocumentReference? get companydetails => _companydetails;
  bool hasCompanydetails() => _companydetails != null;

  // "userdetails" field.
  DocumentReference? _userdetails;
  DocumentReference? get userdetails => _userdetails;
  bool hasUserdetails() => _userdetails != null;

  // "Done" field.
  bool? _done;
  bool get done => _done ?? false;
  bool hasDone() => _done != null;

  // "Badge" field.
  int? _badge;
  int get badge => _badge ?? 0;
  bool hasBadge() => _badge != null;

  // "Delivery" field.
  String? _delivery;
  String get delivery => _delivery ?? '';
  bool hasDelivery() => _delivery != null;

  // "DeliveryAmount" field.
  double? _deliveryAmount;
  double get deliveryAmount => _deliveryAmount ?? 0.0;
  bool hasDeliveryAmount() => _deliveryAmount != null;

  // "CartOrder" field.
  List<DocumentReference>? _cartOrder;
  List<DocumentReference> get cartOrder => _cartOrder ?? const [];
  bool hasCartOrder() => _cartOrder != null;

  // "Totalamount" field.
  double? _totalamount;
  double get totalamount => _totalamount ?? 0.0;
  bool hasTotalamount() => _totalamount != null;

  // "PaymentStatus" field.
  bool? _paymentStatus;
  bool get paymentStatus => _paymentStatus ?? false;
  bool hasPaymentStatus() => _paymentStatus != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "DeliveryCompany" field.
  String? _deliveryCompany;
  String get deliveryCompany => _deliveryCompany ?? '';
  bool hasDeliveryCompany() => _deliveryCompany != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "ProductBuyerRef" field.
  String? _productBuyerRef;
  String get productBuyerRef => _productBuyerRef ?? '';
  bool hasProductBuyerRef() => _productBuyerRef != null;

  // "Noodles" field.
  int? _noodles;
  int get noodles => _noodles ?? 0;
  bool hasNoodles() => _noodles != null;

  // "Eggs" field.
  int? _eggs;
  int get eggs => _eggs ?? 0;
  bool hasEggs() => _eggs != null;

  // "Plantain" field.
  int? _plantain;
  int get plantain => _plantain ?? 0;
  bool hasPlantain() => _plantain != null;

  // "Chicken" field.
  int? _chicken;
  int get chicken => _chicken ?? 0;
  bool hasChicken() => _chicken != null;

  // "Salad" field.
  bool? _salad;
  bool get salad => _salad ?? false;
  bool hasSalad() => _salad != null;

  // "Progress" field.
  String? _progress;
  String get progress => _progress ?? '';
  bool hasProgress() => _progress != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "OrderReference" field.
  String? _orderReference;
  String get orderReference => _orderReference ?? '';
  bool hasOrderReference() => _orderReference != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _ticketCode = snapshotData['TicketCode'] as String?;
    _title = snapshotData['Title'] as String?;
    _size = snapshotData['Size'] as String?;
    _category = snapshotData['Category'] as String?;
    _image = snapshotData['image'] as String?;
    _ready = snapshotData['Ready'] as bool?;
    _customer = getDataList(snapshotData['Customer']);
    _delivered = snapshotData['Delivered'] as bool?;
    _processing = snapshotData['Processing'] as bool?;
    _companydetails = snapshotData['companydetails'] as DocumentReference?;
    _userdetails = snapshotData['userdetails'] as DocumentReference?;
    _done = snapshotData['Done'] as bool?;
    _badge = castToType<int>(snapshotData['Badge']);
    _delivery = snapshotData['Delivery'] as String?;
    _deliveryAmount = castToType<double>(snapshotData['DeliveryAmount']);
    _cartOrder = getDataList(snapshotData['CartOrder']);
    _totalamount = castToType<double>(snapshotData['Totalamount']);
    _paymentStatus = snapshotData['PaymentStatus'] as bool?;
    _address = snapshotData['Address'] as String?;
    _deliveryCompany = snapshotData['DeliveryCompany'] as String?;
    _quantity = castToType<double>(snapshotData['quantity']);
    _productBuyerRef = snapshotData['ProductBuyerRef'] as String?;
    _noodles = castToType<int>(snapshotData['Noodles']);
    _eggs = castToType<int>(snapshotData['Eggs']);
    _plantain = castToType<int>(snapshotData['Plantain']);
    _chicken = castToType<int>(snapshotData['Chicken']);
    _salad = snapshotData['Salad'] as bool?;
    _progress = snapshotData['Progress'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _orderReference = snapshotData['OrderReference'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ordered');

  static Stream<OrderedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderedRecord.fromSnapshot(s));

  static Future<OrderedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderedRecord.fromSnapshot(s));

  static OrderedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderedRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  String? ticketCode,
  String? title,
  String? size,
  String? category,
  String? image,
  bool? ready,
  bool? delivered,
  bool? processing,
  DocumentReference? companydetails,
  DocumentReference? userdetails,
  bool? done,
  int? badge,
  String? delivery,
  double? deliveryAmount,
  double? totalamount,
  bool? paymentStatus,
  String? address,
  String? deliveryCompany,
  double? quantity,
  String? productBuyerRef,
  int? noodles,
  int? eggs,
  int? plantain,
  int? chicken,
  bool? salad,
  String? progress,
  String? phone,
  String? orderReference,
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
      'TicketCode': ticketCode,
      'Title': title,
      'Size': size,
      'Category': category,
      'image': image,
      'Ready': ready,
      'Delivered': delivered,
      'Processing': processing,
      'companydetails': companydetails,
      'userdetails': userdetails,
      'Done': done,
      'Badge': badge,
      'Delivery': delivery,
      'DeliveryAmount': deliveryAmount,
      'Totalamount': totalamount,
      'PaymentStatus': paymentStatus,
      'Address': address,
      'DeliveryCompany': deliveryCompany,
      'quantity': quantity,
      'ProductBuyerRef': productBuyerRef,
      'Noodles': noodles,
      'Eggs': eggs,
      'Plantain': plantain,
      'Chicken': chicken,
      'Salad': salad,
      'Progress': progress,
      'Phone': phone,
      'OrderReference': orderReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderedRecordDocumentEquality implements Equality<OrderedRecord> {
  const OrderedRecordDocumentEquality();

  @override
  bool equals(OrderedRecord? e1, OrderedRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.ticketCode == e2?.ticketCode &&
        e1?.title == e2?.title &&
        e1?.size == e2?.size &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.ready == e2?.ready &&
        listEquality.equals(e1?.customer, e2?.customer) &&
        e1?.delivered == e2?.delivered &&
        e1?.processing == e2?.processing &&
        e1?.companydetails == e2?.companydetails &&
        e1?.userdetails == e2?.userdetails &&
        e1?.done == e2?.done &&
        e1?.badge == e2?.badge &&
        e1?.delivery == e2?.delivery &&
        e1?.deliveryAmount == e2?.deliveryAmount &&
        listEquality.equals(e1?.cartOrder, e2?.cartOrder) &&
        e1?.totalamount == e2?.totalamount &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.address == e2?.address &&
        e1?.deliveryCompany == e2?.deliveryCompany &&
        e1?.quantity == e2?.quantity &&
        e1?.productBuyerRef == e2?.productBuyerRef &&
        e1?.noodles == e2?.noodles &&
        e1?.eggs == e2?.eggs &&
        e1?.plantain == e2?.plantain &&
        e1?.chicken == e2?.chicken &&
        e1?.salad == e2?.salad &&
        e1?.progress == e2?.progress &&
        e1?.phone == e2?.phone &&
        e1?.orderReference == e2?.orderReference;
  }

  @override
  int hash(OrderedRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.ticketCode,
        e?.title,
        e?.size,
        e?.category,
        e?.image,
        e?.ready,
        e?.customer,
        e?.delivered,
        e?.processing,
        e?.companydetails,
        e?.userdetails,
        e?.done,
        e?.badge,
        e?.delivery,
        e?.deliveryAmount,
        e?.cartOrder,
        e?.totalamount,
        e?.paymentStatus,
        e?.address,
        e?.deliveryCompany,
        e?.quantity,
        e?.productBuyerRef,
        e?.noodles,
        e?.eggs,
        e?.plantain,
        e?.chicken,
        e?.salad,
        e?.progress,
        e?.phone,
        e?.orderReference
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderedRecord;
}
