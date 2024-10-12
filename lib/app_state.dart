import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _favorite = (await secureStorage.getStringList('ff_favorite'))
              ?.map((path) => path.ref)
              .toList() ??
          _favorite;
    });
    await _safeInitAsync(() async {
      _isLiked = await secureStorage.getBool('ff_isLiked') ?? _isLiked;
    });
    await _safeInitAsync(() async {
      _isBig = await secureStorage.getBool('ff_isBig') ?? _isBig;
    });
    await _safeInitAsync(() async {
      _cartsum = await secureStorage.getDouble('ff_cartsum') ?? _cartsum;
    });
    await _safeInitAsync(() async {
      _pendingCart = (await secureStorage.getStringList('ff_pendingCart'))
              ?.map((path) => path.ref)
              .toList() ??
          _pendingCart;
    });
    await _safeInitAsync(() async {
      _PendingCartSum =
          await secureStorage.getDouble('ff_PendingCartSum') ?? _PendingCartSum;
    });
    await _safeInitAsync(() async {
      _isShowPending =
          await secureStorage.getBool('ff_isShowPending') ?? _isShowPending;
    });
    await _safeInitAsync(() async {
      _Cart = (await secureStorage.getStringList('ff_Cart'))
              ?.map((path) => path.ref)
              .toList() ??
          _Cart;
    });
    await _safeInitAsync(() async {
      _PageIndex = await secureStorage.getInt('ff_PageIndex') ?? _PageIndex;
    });
    await _safeInitAsync(() async {
      _PizzaIndex = await secureStorage.getInt('ff_PizzaIndex') ?? _PizzaIndex;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<DocumentReference> _favorite = [];
  List<DocumentReference> get favorite => _favorite;
  set favorite(List<DocumentReference> value) {
    _favorite = value;
    secureStorage.setStringList(
        'ff_favorite', value.map((x) => x.path).toList());
  }

  void deleteFavorite() {
    secureStorage.delete(key: 'ff_favorite');
  }

  void addToFavorite(DocumentReference value) {
    favorite.add(value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeFromFavorite(DocumentReference value) {
    favorite.remove(value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavorite(int index) {
    favorite.removeAt(index);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void updateFavoriteAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    favorite[index] = updateFn(_favorite[index]);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void insertAtIndexInFavorite(int index, DocumentReference value) {
    favorite.insert(index, value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  int _size = 0;
  int get size => _size;
  set size(int value) {
    _size = value;
  }

  bool _isLiked = false;
  bool get isLiked => _isLiked;
  set isLiked(bool value) {
    _isLiked = value;
    secureStorage.setBool('ff_isLiked', value);
  }

  void deleteIsLiked() {
    secureStorage.delete(key: 'ff_isLiked');
  }

  bool _isSearchFull = true;
  bool get isSearchFull => _isSearchFull;
  set isSearchFull(bool value) {
    _isSearchFull = value;
  }

  bool _isBig = false;
  bool get isBig => _isBig;
  set isBig(bool value) {
    _isBig = value;
    secureStorage.setBool('ff_isBig', value);
  }

  void deleteIsBig() {
    secureStorage.delete(key: 'ff_isBig');
  }

  double _cartsum = 0.0;
  double get cartsum => _cartsum;
  set cartsum(double value) {
    _cartsum = value;
    secureStorage.setDouble('ff_cartsum', value);
  }

  void deleteCartsum() {
    secureStorage.delete(key: 'ff_cartsum');
  }

  List<DocumentReference> _pendingCart = [];
  List<DocumentReference> get pendingCart => _pendingCart;
  set pendingCart(List<DocumentReference> value) {
    _pendingCart = value;
    secureStorage.setStringList(
        'ff_pendingCart', value.map((x) => x.path).toList());
  }

  void deletePendingCart() {
    secureStorage.delete(key: 'ff_pendingCart');
  }

  void addToPendingCart(DocumentReference value) {
    pendingCart.add(value);
    secureStorage.setStringList(
        'ff_pendingCart', _pendingCart.map((x) => x.path).toList());
  }

  void removeFromPendingCart(DocumentReference value) {
    pendingCart.remove(value);
    secureStorage.setStringList(
        'ff_pendingCart', _pendingCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromPendingCart(int index) {
    pendingCart.removeAt(index);
    secureStorage.setStringList(
        'ff_pendingCart', _pendingCart.map((x) => x.path).toList());
  }

  void updatePendingCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    pendingCart[index] = updateFn(_pendingCart[index]);
    secureStorage.setStringList(
        'ff_pendingCart', _pendingCart.map((x) => x.path).toList());
  }

  void insertAtIndexInPendingCart(int index, DocumentReference value) {
    pendingCart.insert(index, value);
    secureStorage.setStringList(
        'ff_pendingCart', _pendingCart.map((x) => x.path).toList());
  }

  double _PendingCartSum = 0.0;
  double get PendingCartSum => _PendingCartSum;
  set PendingCartSum(double value) {
    _PendingCartSum = value;
    secureStorage.setDouble('ff_PendingCartSum', value);
  }

  void deletePendingCartSum() {
    secureStorage.delete(key: 'ff_PendingCartSum');
  }

  bool _isShowPending = false;
  bool get isShowPending => _isShowPending;
  set isShowPending(bool value) {
    _isShowPending = value;
    secureStorage.setBool('ff_isShowPending', value);
  }

  void deleteIsShowPending() {
    secureStorage.delete(key: 'ff_isShowPending');
  }

  List<DocumentReference> _Cart = [];
  List<DocumentReference> get Cart => _Cart;
  set Cart(List<DocumentReference> value) {
    _Cart = value;
    secureStorage.setStringList('ff_Cart', value.map((x) => x.path).toList());
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_Cart');
  }

  void addToCart(DocumentReference value) {
    Cart.add(value);
    secureStorage.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference value) {
    Cart.remove(value);
    secureStorage.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  void removeAtIndexFromCart(int index) {
    Cart.removeAt(index);
    secureStorage.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    Cart[index] = updateFn(_Cart[index]);
    secureStorage.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    Cart.insert(index, value);
    secureStorage.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  int _PageIndex = 0;
  int get PageIndex => _PageIndex;
  set PageIndex(int value) {
    _PageIndex = value;
    secureStorage.setInt('ff_PageIndex', value);
  }

  void deletePageIndex() {
    secureStorage.delete(key: 'ff_PageIndex');
  }

  double _price = 0.0;
  double get price => _price;
  set price(double value) {
    _price = value;
  }

  double _contador = 1.0;
  double get contador => _contador;
  set contador(double value) {
    _contador = value;
  }

  int _PizzaIndex = 0;
  int get PizzaIndex => _PizzaIndex;
  set PizzaIndex(int value) {
    _PizzaIndex = value;
    secureStorage.setInt('ff_PizzaIndex', value);
  }

  void deletePizzaIndex() {
    secureStorage.delete(key: 'ff_PizzaIndex');
  }

  bool _Optionsedit = false;
  bool get Optionsedit => _Optionsedit;
  set Optionsedit(bool value) {
    _Optionsedit = value;
  }

  bool _AddedtoCart = false;
  bool get AddedtoCart => _AddedtoCart;
  set AddedtoCart(bool value) {
    _AddedtoCart = value;
  }

  bool _AddedtoFavorite = false;
  bool get AddedtoFavorite => _AddedtoFavorite;
  set AddedtoFavorite(bool value) {
    _AddedtoFavorite = value;
  }

  List<String> _SupremeNoodlesCondiments = [];
  List<String> get SupremeNoodlesCondiments => _SupremeNoodlesCondiments;
  set SupremeNoodlesCondiments(List<String> value) {
    _SupremeNoodlesCondiments = value;
  }

  void addToSupremeNoodlesCondiments(String value) {
    SupremeNoodlesCondiments.add(value);
  }

  void removeFromSupremeNoodlesCondiments(String value) {
    SupremeNoodlesCondiments.remove(value);
  }

  void removeAtIndexFromSupremeNoodlesCondiments(int index) {
    SupremeNoodlesCondiments.removeAt(index);
  }

  void updateSupremeNoodlesCondimentsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SupremeNoodlesCondiments[index] =
        updateFn(_SupremeNoodlesCondiments[index]);
  }

  void insertAtIndexInSupremeNoodlesCondiments(int index, String value) {
    SupremeNoodlesCondiments.insert(index, value);
  }

  double _SupremeCondiments = 0.0;
  double get SupremeCondiments => _SupremeCondiments;
  set SupremeCondiments(double value) {
    _SupremeCondiments = value;
  }

  int _NumberOfEggs = 0;
  int get NumberOfEggs => _NumberOfEggs;
  set NumberOfEggs(int value) {
    _NumberOfEggs = value;
  }

  int _NumberPlantain = 0;
  int get NumberPlantain => _NumberPlantain;
  set NumberPlantain(int value) {
    _NumberPlantain = value;
  }

  int _NumberOfChicken = 0;
  int get NumberOfChicken => _NumberOfChicken;
  set NumberOfChicken(int value) {
    _NumberOfChicken = value;
  }

  bool _Salad = false;
  bool get Salad => _Salad;
  set Salad(bool value) {
    _Salad = value;
  }

  double _ProductPrice = 0.0;
  double get ProductPrice => _ProductPrice;
  set ProductPrice(double value) {
    _ProductPrice = value;
  }

  int _NumberOfNoodles = 0;
  int get NumberOfNoodles => _NumberOfNoodles;
  set NumberOfNoodles(int value) {
    _NumberOfNoodles = value;
  }

  int _PlateOfEwa = 0;
  int get PlateOfEwa => _PlateOfEwa;
  set PlateOfEwa(int value) {
    _PlateOfEwa = value;
  }

  int _CookedEgg = 0;
  int get CookedEgg => _CookedEgg;
  set CookedEgg(int value) {
    _CookedEgg = value;
  }

  int _NumberOfFish = 0;
  int get NumberOfFish => _NumberOfFish;
  set NumberOfFish(int value) {
    _NumberOfFish = value;
  }

  int _Ponmo = 0;
  int get Ponmo => _Ponmo;
  set Ponmo(int value) {
    _Ponmo = value;
  }

  int _NumberOfBeef = 0;
  int get NumberOfBeef => _NumberOfBeef;
  set NumberOfBeef(int value) {
    _NumberOfBeef = value;
  }

  int _PlantainForEwa = 0;
  int get PlantainForEwa => _PlantainForEwa;
  set PlantainForEwa(int value) {
    _PlantainForEwa = value;
  }

  double _EwaProductPrice = 0.0;
  double get EwaProductPrice => _EwaProductPrice;
  set EwaProductPrice(double value) {
    _EwaProductPrice = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
