import 'package:lianhua_jingxuan_flutter/base/const_config.dart';
import 'package:lianhua_jingxuan_flutter/data/shop/Shop.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ShopTools {
  static ShopTools _instance;
  static Future<ShopTools> get instance async {
    return await getInstance();
  }

  static Future<ShopTools> getInstance() async {
    if (_instance == null) {
      _instance = new ShopTools();
      await _instance._init();
    }
    return _instance;
  }

  Future _init() async {
    _spf = await SharedPreferences.getInstance();
  }

  static SharedPreferences _spf;

  static bool _beforCheck() {
    if (_spf == null) {
      return true;
    }
    return false;
  }

  // 存储访问过的门店
  Future<bool> setShopData(Shop shop) {
    if (_beforCheck()) return null;
    this.saveCurrentShop(shop);

    /// 之前存储过没
    List<Shop> oldArr = this.getHistoryShops();
    if (oldArr.length > 0) {
      int index = oldArr.indexWhere((item) {
        return item.id == shop.id;
      });
      if (index != -1) {
        /// 之前存储过
        int i = oldArr.indexWhere((item) {
          return item.id == shop.id;
        });
        oldArr.removeAt(i);
        oldArr.insert(0, shop);
      } else {
        // 第一次存
        oldArr.insert(0, shop);
      }
    } else {
      oldArr.insert(0, shop);
    }

    List<String> listStr = [];
    oldArr.forEach((shop) {
      String shopStr = jsonEncode(shop.toJson());
      listStr.add(shopStr);
    });
    return _spf.setStringList(ConstConfig.HISTORY_SHOP, listStr);
  }

  // 获取存储的门店
  List<Shop> getHistoryShops() {
    var stringList = _spf.getStringList(ConstConfig.HISTORY_SHOP);
    if (stringList == null) {
      return [];
    }
    List<Shop> arr = [];
    stringList.forEach((item) {
      if (item != null) {
        var map = json.decode(item);
        Shop shop = Shop.fromJson(map);
        arr.add(shop);
      }
    });
    return arr;
  }

  // 删除数据
  Future<bool> delectHistoryShopData() {
    return _spf.setStringList(ConstConfig.HISTORY_SHOP, []);
  }

  /// 存储当前选择的门店
  saveCurrentShop(Shop shop) {
    String shopStr = jsonEncode(shop.toJson());
    _spf.setString(ConstConfig.CURRENTSELCT_SHOP, shopStr);
  }

  /// 获取当前选择的门店
  Shop getCurrentShop() {
    var shopStr = _spf.getString(ConstConfig.CURRENTSELCT_SHOP);
    if (shopStr == null) {
      return null;
    }
    Map shopmap = json.decode(shopStr);
    return Shop.fromJson(shopmap);
  }
  /// 删除当前门店
  Future<bool> delectCurrentShop() {
    return _spf.setString(ConstConfig.CURRENTSELCT_SHOP, null);
  }
}
