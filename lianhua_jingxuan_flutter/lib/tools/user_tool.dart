import 'package:lianhua_jingxuan_flutter/base/const_config.dart';
import 'package:lianhua_jingxuan_flutter/data/member/MemberRegisterResponse.dart';
import 'package:lianhua_jingxuan_flutter/data/member/Score.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UserTools {
  static UserTools _instance;
  static Future<UserTools> get instance async {
    return await getInstance();
  }
  static Future<UserTools> getInstance() async  {
    if (_instance == null) {
      _instance = new UserTools();
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

  // 存储用户数据
  Future<bool> setUserData(MemberRegisterResponse user) {
    if (_beforCheck()) return null;
    var jsonStr = json.encode(user.toJson());
    return _spf.setString(ConstConfig.CURRENT_USERDATA, jsonStr);
  }

  // 获取数据
  MemberRegisterResponse getUserData() {
    var mapStr = _spf.getString(ConstConfig.CURRENT_USERDATA);
    if (mapStr != null) {
      var map = json.decode(mapStr);
      MemberRegisterResponse member = MemberRegisterResponse.fromJson(map);
      return member;
    } else {
      return null;
    }
  }

  /// 获取用户的卡信息
  Score getUserCardInfo() {
    var userinfo = this.getUserData();
    if (userinfo == null) {
      return null;
    } else if (userinfo.scores.length > 0) {
      return userinfo.scores.first;
    } else {
      return null;
    }
  }


  /// 是否已经登录
  bool isLogined() {
    return this.getUserId().length > 0;
  }

  String getUserId() {
    var userData = this.getUserData();
    if (userData != null) {
      MemberRegisterResponse user = userData;
      return user.userId;
    } else {
      return '';
    }
  }

  String getUserToken() {
    var userData = this.getUserData();
    if (userData != null) {
      MemberRegisterResponse user = userData;
      return user.token;
    } else {
      return '';
    }
  }

  // 更新用户头像
  Future<MemberRegisterResponse> updateUserIcon(String iconStr) async {
    var userData = this.getUserData();
    if (userData != null) {
      MemberRegisterResponse user = userData;
      user.memberHeadImg = iconStr;
      await this.setUserData(user);
      return user;
    } else {
      return MemberRegisterResponse();
    }
  }


  // 删除数据
  Future<bool> delectUserData() {
    return _spf.setString(ConstConfig.CURRENT_USERDATA, null);
  }
}