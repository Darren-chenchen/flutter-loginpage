import 'dart:async';

import 'package:lianhua_jingxuan_flutter/base/base.dart';
import 'package:lianhua_jingxuan_flutter/utils/common_util.dart';
import 'package:rxdart/rxdart.dart';

enum LoginMethods { // 短信，密码，微信， 淘宝
  code,
  pwd,
  wechat,
  taobao
}

class LoginProvider extends BaseProvider {


  List<String> _titles = ['密码登录'];
  List<String> get titles => _titles;
  set titles(List<String> titles) {
    _titles = titles;
    notify();
  }

  // 登录方式 短信，密码，微信， 淘宝
  LoginMethods _loginMethod = LoginMethods.code;
  LoginMethods get loginMethod => _loginMethod;
  set loginMethod(LoginMethods loginMethod) {
    _loginMethod = loginMethod;
    if (loginMethod == LoginMethods.code) {
      this.titles = ['密码登录'];
    }
    if (loginMethod == LoginMethods.pwd) {
      this.titles = ['短信登录'];
    }
    notify();
  }

  // 用户名
  String _userName = '';
  String get userName => _userName;
  set userName(String userName) {
    _userName = userName;
    _loginBtnCanClick();
  }
  // 验证码
  String _code = '';
  String get code => _code;
  set code(String code) {
    _code = code;
    _loginBtnCanClick();
  }
  // 密码
  String _pwd = '';
  String get pwd => _pwd;
  set pwd(String pwd) {
    _pwd = pwd;
    _loginBtnCanClick();
  }

  /// 判断按钮是否可以点击
  _loginBtnCanClick() {
    bool isValue = false;
    if (this.loginMethod == LoginMethods.code) {
      isValue = this.code.length > 0;
    }
    if (this.loginMethod == LoginMethods.pwd) {
      isValue = CommonUtil.isPassword(this.pwd);
    }
    if (CommonUtil.isPhone(userName) && isValue) {
      this.loginEnable = true;
    } else {
      this.loginEnable = false;
    }
  }

  bool _loginEnable = false;
  bool get loginEnable => _loginEnable;
  set loginEnable(bool loginEnable) {
    _loginEnable = loginEnable;
    notify();
  }

  bool _showPwd = false;
  bool get showPwd => _showPwd;
  set showPwd(bool showPwd) {
    _showPwd = showPwd;
    notify();
  }


  String _codeStr = '发送验证码';
  String get codeStr => _codeStr;
  set codeStr(String codeStr) {
    _codeStr = codeStr;
    notify();
  }

  /// 定时器
  Timer _countdownTimer = null;
  int _countdownNum = 0;
  int get countdownNum => _countdownNum;
  set countdownNum(int countdownNum) {
    _countdownNum = countdownNum;
    if (_countdownNum > 0 && _countdownTimer == null) {
      this.startTimer();
    } else if (_countdownNum <= 0 && _countdownTimer != null) {
      this.stopTimer();
    }
  }

  /// 开启定时器
  startTimer() {
    _countdownTimer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      this.countdownNum = this.countdownNum - 1;
      String downText = '${this.countdownNum}' + 's后重发';
      this.codeStr = downText;
      if (this.countdownNum == 0) {
        this.codeStr = '重发验证码';
      }
    });
  }
  /// 关闭定时器
  stopTimer() {
    if (_countdownTimer != null) {
      _countdownTimer.cancel();
      _countdownTimer = null;
    }
  }

  notify() {
    notifyListeners();
  }

  /// 登录
  Observable login() {

  }
  Observable sendCode() {

  }


}