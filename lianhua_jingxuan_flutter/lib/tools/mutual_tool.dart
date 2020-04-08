
import 'dart:convert';

import 'package:lianhua_jingxuan_flutter/base/app_config.dart';
import 'package:lianhua_jingxuan_flutter/data/locationInfo.dart';
import 'package:lianhua_jingxuan_flutter/widgets/my_toast.dart';
import 'package:rxdart/rxdart.dart';


class MutualTools {
  // 工厂模式
  factory MutualTools() =>_getInstance();
  static MutualTools get instance => _getInstance();
  static MutualTools _instance;
  static MutualTools _getInstance() {
    if (_instance == null) {
      _instance = new MutualTools._internal();
    }
    return _instance;
  }

  final locationInfoSubject = new BehaviorSubject<LocationInfo>();
  final locationFailSubject = new BehaviorSubject<String>();
  final locationByCitySubject = new BehaviorSubject<LocationInfo>();
  final locationByCityFailSubject = new BehaviorSubject<LocationInfo>();

  MutualTools._internal() {
    // 监听事件，同时发送参数12345
    AppConfig.eventChannel.receiveBroadcastStream(12345).listen(_onEvent,onError: _onError);
  }

  // 回调事件
  void _onEvent(dynamic event) {
    print(event);
    print(6666666);
    print(event['key']);
    print(event['value']);
    String key = event['key'];
    if (key == 'locationSuccess') {
      Map value = event['value'];
      String str = jsonEncode(value);
      LocationInfo info = LocationInfo.fromJson(jsonDecode(str));
      locationInfoSubject.value = info;
    }
    if (key == 'locationFail') {
      String requestId = event['value'];
      locationFailSubject.value = requestId;
      MyToast.show(MyToastState.fail, '定位失败');
    }
    // 通过城市和地址获取经纬度成功
    if (key == 'geoCodeSuccess') {
      Map value = event['value'];
      String str = jsonEncode(value);
      LocationInfo info = LocationInfo.fromJson(jsonDecode(str));
      locationByCitySubject.value = info;
    }
    if (key == 'geoCodeFail') {
      Map value = event['value'];
      String str = jsonEncode(value);
      LocationInfo info = LocationInfo.fromJson(jsonDecode(str));
      locationByCityFailSubject.value = info;
    }

  }

  // 错误返回
  void _onError(Object error) {

  }

  // 调用原生的方法都写在这里
  startLocation([String requestId = '']) {
    try{
      AppConfig.platform.invokeMethod('startLocation', requestId);
    } catch(e){
    }
  }
  stopLocation() {
    try{
      AppConfig.platform.invokeMethod('stopLocation');
    } catch(e){
    }
  }
  getLongAndLat(String city, String address, String requestId) {
    try{
      AppConfig.platform.invokeMethod('getLongAndLat', {'city': city, 'address': address, 'requestId': requestId});
    } catch(e){
    }
  }
  /// 定位到指定的位置
  locationToAddress(String address) {
    try{
      AppConfig.platform.invokeMethod('locationToAddress', address);
    } catch(e){
    }
  }
}