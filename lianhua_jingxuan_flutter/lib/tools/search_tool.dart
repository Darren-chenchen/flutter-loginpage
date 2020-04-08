import 'package:lianhua_jingxuan_flutter/base/const_config.dart';
import 'package:lianhua_jingxuan_flutter/data/shop/Shop.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SearchTools {
  static SearchTools _instance;
  static Future<SearchTools> get instance async {
    return await getInstance();
  }

  static Future<SearchTools> getInstance() async {
    if (_instance == null) {
      _instance = new SearchTools();
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

  // 存储搜索的商品关键字
  Future<bool> setProductKey(String key) {
    if (_beforCheck()) return null;
    if (key.length > 0) {
      /// 之前存储过没
      List<String> oldArr = this.getHistoryProductKeys();
      if (oldArr.length > 0) {
        int index = oldArr.indexWhere((item) {
          return item == key;
        });
        if (index != -1) {
          /// 之前存储过
          int i = oldArr.indexWhere((item) {
            return item == key;
          });
          oldArr.removeAt(i);
          oldArr.insert(0, key);
        } else {
          // 第一次存
          oldArr.insert(0, key);
        }
      } else {
        oldArr.insert(0, key);
      }
      return _spf.setStringList(ConstConfig.SEARCHPRODUCTKEY, oldArr);
    }
  }

  List<String> getHistoryProductKeys() {
    var stringList = _spf.getStringList(ConstConfig.SEARCHPRODUCTKEY);
    if (stringList == null) {
      return [];
    }
    return stringList ?? [];
  }

  // 删除数据
  Future<bool> delectHistoryProductData() {
    return _spf.setStringList(ConstConfig.SEARCHPRODUCTKEY, []);
  }
}
