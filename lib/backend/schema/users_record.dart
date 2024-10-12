import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "anonymous" field.
  bool? _anonymous;
  bool get anonymous => _anonymous ?? false;
  bool hasAnonymous() => _anonymous != null;

  // "isSuperAdmin" field.
  bool? _isSuperAdmin;
  bool get isSuperAdmin => _isSuperAdmin ?? false;
  bool hasIsSuperAdmin() => _isSuperAdmin != null;

  // "Credited" field.
  bool? _credited;
  bool get credited => _credited ?? false;
  bool hasCredited() => _credited != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "paymentlink" field.
  String? _paymentlink;
  String get paymentlink => _paymentlink ?? '';
  bool hasPaymentlink() => _paymentlink != null;

  // "Balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "cart" field.
  List<DocumentReference>? _cart;
  List<DocumentReference> get cart => _cart ?? const [];
  bool hasCart() => _cart != null;

  // "TotalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "TotalSpent" field.
  double? _totalSpent;
  double get totalSpent => _totalSpent ?? 0.0;
  bool hasTotalSpent() => _totalSpent != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "ProductQuantity" field.
  int? _productQuantity;
  int get productQuantity => _productQuantity ?? 0;
  bool hasProductQuantity() => _productQuantity != null;

  // "TemporaryBalance" field.
  double? _temporaryBalance;
  double get temporaryBalance => _temporaryBalance ?? 0.0;
  bool hasTemporaryBalance() => _temporaryBalance != null;

  // "CreditWorthy" field.
  bool? _creditWorthy;
  bool get creditWorthy => _creditWorthy ?? false;
  bool hasCreditWorthy() => _creditWorthy != null;

  // "CreditAmount" field.
  double? _creditAmount;
  double get creditAmount => _creditAmount ?? 0.0;
  bool hasCreditAmount() => _creditAmount != null;

  // "SoldAmount" field.
  double? _soldAmount;
  double get soldAmount => _soldAmount ?? 0.0;
  bool hasSoldAmount() => _soldAmount != null;

  // "TotalCartSum" field.
  double? _totalCartSum;
  double get totalCartSum => _totalCartSum ?? 0.0;
  bool hasTotalCartSum() => _totalCartSum != null;

  // "Ordered" field.
  bool? _ordered;
  bool get ordered => _ordered ?? false;
  bool hasOrdered() => _ordered != null;

  // "Processing" field.
  bool? _processing;
  bool get processing => _processing ?? false;
  bool hasProcessing() => _processing != null;

  // "TotalSold" field.
  double? _totalSold;
  double get totalSold => _totalSold ?? 0.0;
  bool hasTotalSold() => _totalSold != null;

  // "TRX" field.
  String? _trx;
  String get trx => _trx ?? '';
  bool hasTrx() => _trx != null;

  // "PaymentCode" field.
  String? _paymentCode;
  String get paymentCode => _paymentCode ?? '';
  bool hasPaymentCode() => _paymentCode != null;

  // "ReceivedBalance" field.
  double? _receivedBalance;
  double get receivedBalance => _receivedBalance ?? 0.0;
  bool hasReceivedBalance() => _receivedBalance != null;

  // "GoodsPaymentProcessed" field.
  List<DocumentReference>? _goodsPaymentProcessed;
  List<DocumentReference> get goodsPaymentProcessed =>
      _goodsPaymentProcessed ?? const [];
  bool hasGoodsPaymentProcessed() => _goodsPaymentProcessed != null;

  // "CurrentTRX" field.
  String? _currentTRX;
  String get currentTRX => _currentTRX ?? '';
  bool hasCurrentTRX() => _currentTRX != null;

  // "BraintreePrice" field.
  double? _braintreePrice;
  double get braintreePrice => _braintreePrice ?? 0.0;
  bool hasBraintreePrice() => _braintreePrice != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "ProductBuyerRef" field.
  String? _productBuyerRef;
  String get productBuyerRef => _productBuyerRef ?? '';
  bool hasProductBuyerRef() => _productBuyerRef != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "ListOfAddedCondiments" field.
  List<String>? _listOfAddedCondiments;
  List<String> get listOfAddedCondiments => _listOfAddedCondiments ?? const [];
  bool hasListOfAddedCondiments() => _listOfAddedCondiments != null;

  // "NumberOfEggs" field.
  int? _numberOfEggs;
  int get numberOfEggs => _numberOfEggs ?? 0;
  bool hasNumberOfEggs() => _numberOfEggs != null;

  // "NumberOfPlantains" field.
  int? _numberOfPlantains;
  int get numberOfPlantains => _numberOfPlantains ?? 0;
  bool hasNumberOfPlantains() => _numberOfPlantains != null;

  // "Chicken" field.
  int? _chicken;
  int get chicken => _chicken ?? 0;
  bool hasChicken() => _chicken != null;

  // "Salad" field.
  bool? _salad;
  bool get salad => _salad ?? false;
  bool hasSalad() => _salad != null;

  // "ProductPrice" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "IsJJCadmin" field.
  bool? _isJJCadmin;
  bool get isJJCadmin => _isJJCadmin ?? false;
  bool hasIsJJCadmin() => _isJJCadmin != null;

  // "CheckoutAmount" field.
  double? _checkoutAmount;
  double get checkoutAmount => _checkoutAmount ?? 0.0;
  bool hasCheckoutAmount() => _checkoutAmount != null;

  // "BankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "AccountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  bool hasAccountName() => _accountName != null;

  // "AccountNumber" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "PendingDeposit" field.
  bool? _pendingDeposit;
  bool get pendingDeposit => _pendingDeposit ?? false;
  bool hasPendingDeposit() => _pendingDeposit != null;

  // "DepositAmount" field.
  double? _depositAmount;
  double get depositAmount => _depositAmount ?? 0.0;
  bool hasDepositAmount() => _depositAmount != null;

  // "DepositStatus" field.
  String? _depositStatus;
  String get depositStatus => _depositStatus ?? '';
  bool hasDepositStatus() => _depositStatus != null;

  // "isJJCcustomer" field.
  bool? _isJJCcustomer;
  bool get isJJCcustomer => _isJJCcustomer ?? false;
  bool hasIsJJCcustomer() => _isJJCcustomer != null;

  // "IsJJCrider" field.
  bool? _isJJCrider;
  bool get isJJCrider => _isJJCrider ?? false;
  bool hasIsJJCrider() => _isJJCrider != null;

  // "TotalSpentOnJJC" field.
  double? _totalSpentOnJJC;
  double get totalSpentOnJJC => _totalSpentOnJJC ?? 0.0;
  bool hasTotalSpentOnJJC() => _totalSpentOnJJC != null;

  // "OrderReference" field.
  String? _orderReference;
  String get orderReference => _orderReference ?? '';
  bool hasOrderReference() => _orderReference != null;

  // "NumberOfOrders" field.
  int? _numberOfOrders;
  int get numberOfOrders => _numberOfOrders ?? 0;
  bool hasNumberOfOrders() => _numberOfOrders != null;

  // "ConfirmOrDeleted" field.
  int? _confirmOrDeleted;
  int get confirmOrDeleted => _confirmOrDeleted ?? 0;
  bool hasConfirmOrDeleted() => _confirmOrDeleted != null;

  // "FoodOrder" field.
  bool? _foodOrder;
  bool get foodOrder => _foodOrder ?? false;
  bool hasFoodOrder() => _foodOrder != null;

  // "CartDone" field.
  bool? _cartDone;
  bool get cartDone => _cartDone ?? false;
  bool hasCartDone() => _cartDone != null;

  // "OrderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _sex = snapshotData['sex'] as String?;
    _anonymous = snapshotData['anonymous'] as bool?;
    _isSuperAdmin = snapshotData['isSuperAdmin'] as bool?;
    _credited = snapshotData['Credited'] as bool?;
    _id = snapshotData['ID'] as String?;
    _paymentlink = snapshotData['paymentlink'] as String?;
    _balance = castToType<double>(snapshotData['Balance']);
    _cart = getDataList(snapshotData['cart']);
    _totalAmount = castToType<double>(snapshotData['TotalAmount']);
    _quantity = castToType<int>(snapshotData['Quantity']);
    _totalSpent = castToType<double>(snapshotData['TotalSpent']);
    _phoneNumber = snapshotData['phone_number'] as String?;
    _productQuantity = castToType<int>(snapshotData['ProductQuantity']);
    _temporaryBalance = castToType<double>(snapshotData['TemporaryBalance']);
    _creditWorthy = snapshotData['CreditWorthy'] as bool?;
    _creditAmount = castToType<double>(snapshotData['CreditAmount']);
    _soldAmount = castToType<double>(snapshotData['SoldAmount']);
    _totalCartSum = castToType<double>(snapshotData['TotalCartSum']);
    _ordered = snapshotData['Ordered'] as bool?;
    _processing = snapshotData['Processing'] as bool?;
    _totalSold = castToType<double>(snapshotData['TotalSold']);
    _trx = snapshotData['TRX'] as String?;
    _paymentCode = snapshotData['PaymentCode'] as String?;
    _receivedBalance = castToType<double>(snapshotData['ReceivedBalance']);
    _goodsPaymentProcessed = getDataList(snapshotData['GoodsPaymentProcessed']);
    _currentTRX = snapshotData['CurrentTRX'] as String?;
    _braintreePrice = castToType<double>(snapshotData['BraintreePrice']);
    _address = snapshotData['Address'] as String?;
    _productBuyerRef = snapshotData['ProductBuyerRef'] as String?;
    _category = snapshotData['Category'] as String?;
    _listOfAddedCondiments = getDataList(snapshotData['ListOfAddedCondiments']);
    _numberOfEggs = castToType<int>(snapshotData['NumberOfEggs']);
    _numberOfPlantains = castToType<int>(snapshotData['NumberOfPlantains']);
    _chicken = castToType<int>(snapshotData['Chicken']);
    _salad = snapshotData['Salad'] as bool?;
    _productPrice = castToType<double>(snapshotData['ProductPrice']);
    _isJJCadmin = snapshotData['IsJJCadmin'] as bool?;
    _checkoutAmount = castToType<double>(snapshotData['CheckoutAmount']);
    _bankName = snapshotData['BankName'] as String?;
    _accountName = snapshotData['AccountName'] as String?;
    _accountNumber = castToType<int>(snapshotData['AccountNumber']);
    _pendingDeposit = snapshotData['PendingDeposit'] as bool?;
    _depositAmount = castToType<double>(snapshotData['DepositAmount']);
    _depositStatus = snapshotData['DepositStatus'] as String?;
    _isJJCcustomer = snapshotData['isJJCcustomer'] as bool?;
    _isJJCrider = snapshotData['IsJJCrider'] as bool?;
    _totalSpentOnJJC = castToType<double>(snapshotData['TotalSpentOnJJC']);
    _orderReference = snapshotData['OrderReference'] as String?;
    _numberOfOrders = castToType<int>(snapshotData['NumberOfOrders']);
    _confirmOrDeleted = castToType<int>(snapshotData['ConfirmOrDeleted']);
    _foodOrder = snapshotData['FoodOrder'] as bool?;
    _cartDone = snapshotData['CartDone'] as bool?;
    _orderDate = snapshotData['OrderDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  bool? isAdmin,
  String? sex,
  bool? anonymous,
  bool? isSuperAdmin,
  bool? credited,
  String? id,
  String? paymentlink,
  double? balance,
  double? totalAmount,
  int? quantity,
  double? totalSpent,
  String? phoneNumber,
  int? productQuantity,
  double? temporaryBalance,
  bool? creditWorthy,
  double? creditAmount,
  double? soldAmount,
  double? totalCartSum,
  bool? ordered,
  bool? processing,
  double? totalSold,
  String? trx,
  String? paymentCode,
  double? receivedBalance,
  String? currentTRX,
  double? braintreePrice,
  String? address,
  String? productBuyerRef,
  String? category,
  int? numberOfEggs,
  int? numberOfPlantains,
  int? chicken,
  bool? salad,
  double? productPrice,
  bool? isJJCadmin,
  double? checkoutAmount,
  String? bankName,
  String? accountName,
  int? accountNumber,
  bool? pendingDeposit,
  double? depositAmount,
  String? depositStatus,
  bool? isJJCcustomer,
  bool? isJJCrider,
  double? totalSpentOnJJC,
  String? orderReference,
  int? numberOfOrders,
  int? confirmOrDeleted,
  bool? foodOrder,
  bool? cartDone,
  DateTime? orderDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'isAdmin': isAdmin,
      'sex': sex,
      'anonymous': anonymous,
      'isSuperAdmin': isSuperAdmin,
      'Credited': credited,
      'ID': id,
      'paymentlink': paymentlink,
      'Balance': balance,
      'TotalAmount': totalAmount,
      'Quantity': quantity,
      'TotalSpent': totalSpent,
      'phone_number': phoneNumber,
      'ProductQuantity': productQuantity,
      'TemporaryBalance': temporaryBalance,
      'CreditWorthy': creditWorthy,
      'CreditAmount': creditAmount,
      'SoldAmount': soldAmount,
      'TotalCartSum': totalCartSum,
      'Ordered': ordered,
      'Processing': processing,
      'TotalSold': totalSold,
      'TRX': trx,
      'PaymentCode': paymentCode,
      'ReceivedBalance': receivedBalance,
      'CurrentTRX': currentTRX,
      'BraintreePrice': braintreePrice,
      'Address': address,
      'ProductBuyerRef': productBuyerRef,
      'Category': category,
      'NumberOfEggs': numberOfEggs,
      'NumberOfPlantains': numberOfPlantains,
      'Chicken': chicken,
      'Salad': salad,
      'ProductPrice': productPrice,
      'IsJJCadmin': isJJCadmin,
      'CheckoutAmount': checkoutAmount,
      'BankName': bankName,
      'AccountName': accountName,
      'AccountNumber': accountNumber,
      'PendingDeposit': pendingDeposit,
      'DepositAmount': depositAmount,
      'DepositStatus': depositStatus,
      'isJJCcustomer': isJJCcustomer,
      'IsJJCrider': isJJCrider,
      'TotalSpentOnJJC': totalSpentOnJJC,
      'OrderReference': orderReference,
      'NumberOfOrders': numberOfOrders,
      'ConfirmOrDeleted': confirmOrDeleted,
      'FoodOrder': foodOrder,
      'CartDone': cartDone,
      'OrderDate': orderDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.sex == e2?.sex &&
        e1?.anonymous == e2?.anonymous &&
        e1?.isSuperAdmin == e2?.isSuperAdmin &&
        e1?.credited == e2?.credited &&
        e1?.id == e2?.id &&
        e1?.paymentlink == e2?.paymentlink &&
        e1?.balance == e2?.balance &&
        listEquality.equals(e1?.cart, e2?.cart) &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.quantity == e2?.quantity &&
        e1?.totalSpent == e2?.totalSpent &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.productQuantity == e2?.productQuantity &&
        e1?.temporaryBalance == e2?.temporaryBalance &&
        e1?.creditWorthy == e2?.creditWorthy &&
        e1?.creditAmount == e2?.creditAmount &&
        e1?.soldAmount == e2?.soldAmount &&
        e1?.totalCartSum == e2?.totalCartSum &&
        e1?.ordered == e2?.ordered &&
        e1?.processing == e2?.processing &&
        e1?.totalSold == e2?.totalSold &&
        e1?.trx == e2?.trx &&
        e1?.paymentCode == e2?.paymentCode &&
        e1?.receivedBalance == e2?.receivedBalance &&
        listEquality.equals(
            e1?.goodsPaymentProcessed, e2?.goodsPaymentProcessed) &&
        e1?.currentTRX == e2?.currentTRX &&
        e1?.braintreePrice == e2?.braintreePrice &&
        e1?.address == e2?.address &&
        e1?.productBuyerRef == e2?.productBuyerRef &&
        e1?.category == e2?.category &&
        listEquality.equals(
            e1?.listOfAddedCondiments, e2?.listOfAddedCondiments) &&
        e1?.numberOfEggs == e2?.numberOfEggs &&
        e1?.numberOfPlantains == e2?.numberOfPlantains &&
        e1?.chicken == e2?.chicken &&
        e1?.salad == e2?.salad &&
        e1?.productPrice == e2?.productPrice &&
        e1?.isJJCadmin == e2?.isJJCadmin &&
        e1?.checkoutAmount == e2?.checkoutAmount &&
        e1?.bankName == e2?.bankName &&
        e1?.accountName == e2?.accountName &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.pendingDeposit == e2?.pendingDeposit &&
        e1?.depositAmount == e2?.depositAmount &&
        e1?.depositStatus == e2?.depositStatus &&
        e1?.isJJCcustomer == e2?.isJJCcustomer &&
        e1?.isJJCrider == e2?.isJJCrider &&
        e1?.totalSpentOnJJC == e2?.totalSpentOnJJC &&
        e1?.orderReference == e2?.orderReference &&
        e1?.numberOfOrders == e2?.numberOfOrders &&
        e1?.confirmOrDeleted == e2?.confirmOrDeleted &&
        e1?.foodOrder == e2?.foodOrder &&
        e1?.cartDone == e2?.cartDone &&
        e1?.orderDate == e2?.orderDate;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.isAdmin,
        e?.sex,
        e?.anonymous,
        e?.isSuperAdmin,
        e?.credited,
        e?.id,
        e?.paymentlink,
        e?.balance,
        e?.cart,
        e?.totalAmount,
        e?.quantity,
        e?.totalSpent,
        e?.phoneNumber,
        e?.productQuantity,
        e?.temporaryBalance,
        e?.creditWorthy,
        e?.creditAmount,
        e?.soldAmount,
        e?.totalCartSum,
        e?.ordered,
        e?.processing,
        e?.totalSold,
        e?.trx,
        e?.paymentCode,
        e?.receivedBalance,
        e?.goodsPaymentProcessed,
        e?.currentTRX,
        e?.braintreePrice,
        e?.address,
        e?.productBuyerRef,
        e?.category,
        e?.listOfAddedCondiments,
        e?.numberOfEggs,
        e?.numberOfPlantains,
        e?.chicken,
        e?.salad,
        e?.productPrice,
        e?.isJJCadmin,
        e?.checkoutAmount,
        e?.bankName,
        e?.accountName,
        e?.accountNumber,
        e?.pendingDeposit,
        e?.depositAmount,
        e?.depositStatus,
        e?.isJJCcustomer,
        e?.isJJCrider,
        e?.totalSpentOnJJC,
        e?.orderReference,
        e?.numberOfOrders,
        e?.confirmOrDeleted,
        e?.foodOrder,
        e?.cartDone,
        e?.orderDate
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
