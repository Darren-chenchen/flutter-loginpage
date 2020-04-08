
import 'package:connectivity/connectivity.dart';


class NetTools {
  // 工厂模式
  factory NetTools() =>_getInstance();
  static NetTools get instance => _getInstance();
  static NetTools _instance;
  static NetTools _getInstance() {
    if (_instance == null) {
      _instance = new NetTools._internal();
    }
    return _instance;
  }

  NetTools._internal() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      // Got a new connectivity status!
    });
  }

  showAlert() {
    /// 监测到目前使用的流量播放，是否暂停播放？
  }

  Future<ConnectivityResult> getNetStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult;
  }
  Future<bool> is4G() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile;
  }
}