import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lianhua_jingxuan_flutter/base/app_config.dart';
import 'package:lianhua_jingxuan_flutter/base/color_config.dart';
import 'package:lianhua_jingxuan_flutter/data/member/MemberRegisterResponse.dart';
import 'package:lianhua_jingxuan_flutter/utils/common_util.dart';
import 'package:lianhua_jingxuan_flutter/viewmodel/mine/login_provider.dart';
import 'package:lianhua_jingxuan_flutter/widgets/hd_svgpicture.dart';
import 'package:lianhua_jingxuan_flutter/widgets/hd_text.dart';
import 'package:lianhua_jingxuan_flutter/widgets/my_toast.dart';
import 'package:lianhua_jingxuan_flutter/widgets/tap/opacity_tap_widget.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginContentState();
  }
}

class _LoginContentState extends State<LoginPage> {
  LoginProvider _provider = LoginProvider();
  TextEditingController _userVC = TextEditingController();
  TextEditingController _codeVC = TextEditingController();
  TextEditingController _pwdVC = TextEditingController();

  final _subscriptions = CompositeSubscription();

  @override
  void initState() {
// TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _subscriptions.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
// TODO: implement build
    print('build(BuildContext context)');
    return ChangeNotifierProvider.value(
      value: _provider,
      child: Scaffold(
        body: _initView(),
      ),
    );
  }

  Widget _initView() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset('assets/images/bg_loginpage.png'),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _setupTop(),
              _setupContent(),
              _setupBottomTitle(),
              _setupOtherLogins()
            ],
          ),
        )
      ],
    );
  }

  Widget _setupTop() {
    print('_setupTop');
    return Container(
      margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                _goback(false);
              }),
          HDText('登录', fontSize: 36, color: Colors.white),
          new Container(
            width: 50,
          )
        ],
      ),
    );
  }

  Widget _setupContent() {
    print('_setupContent');
    return Stack(
      alignment: Alignment(0, -1.5),
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    color: Color(0x2F0065FF),
                    offset: Offset(0, 1),
                    blurRadius: 16)
              ]),
          margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
          padding: EdgeInsets.fromLTRB(24, 32, 24, 24),
          child: Column(
            children: <Widget>[
              _setupUserInput(),
              Selector<LoginProvider, LoginMethods>(
                selector: (_, provide) => provide.loginMethod,
                builder: (_, value, child) {
                  return value == LoginMethods.code
                      ? _setupCodeLogin()
                      : _setupPwdLogin();
                },
              ),
              _setupLoginBtn(),
            ],
          ),
        ),
        HDSvgPicture(
          svgPath: 'assets/empty_svg/img_jingyutou.svg',
          width: 160,
          height: 160,
        )
      ],
    );
  }

//  短信登录
  Widget _setupCodeLogin() {
    return Column(
      children: <Widget>[
        _setupCode(),
//        _setupSound()
      ],
    );
  }

//  密码登录
  Widget _setupPwdLogin() {
    return Column(
      children: <Widget>[
        _setupPwd(),
//        _setupSound()
      ],
    );
  }

  Widget _setupUserInput() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF4F5F7),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            'assets/icon_svg/ic_phone_default.svg',
            width: 22,
            height: 22,
          ),
          Container(
            width: 8,
          ),
          Expanded(
              child: TextField(
                  style: new TextStyle(color: ColorConfig.C535050),
                  decoration: InputDecoration(
                    hintText: '请填写手机号码',
                    hintStyle: new TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  controller: _userVC,
                  onChanged: (str) {
                    _provider.userName = str;
                  }))
        ],
      ),
    );
  }

  Widget _setupCode() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      decoration: BoxDecoration(
          color: Color(0xFFF4F5F7),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      padding: EdgeInsets.fromLTRB(12, 0, 5, 0),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            'assets/icon_svg/ic_yanzhengma_normal.svg',
            width: 22,
            height: 22,
          ),
          Container(
            width: 8,
          ),
          Expanded(
              child: TextField(
                  style: new TextStyle(color: ColorConfig.C535050),
                  decoration: InputDecoration(
                    hintText: '请输入6位验证码',
                    hintStyle: new TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  controller: _codeVC,
                  onChanged: (str) {
                    _provider.code = str;
                  })),
          Selector<LoginProvider, String>(selector: (_, provide) {
            return _provider.codeStr;
          }, builder: (_, value, __) {
            print('接收到了倒计时，更新文本${value}');
            return FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                onPressed: () {
                  if (!CommonUtil.isPhone(_provider.userName)) {
                    MyToast.showText('手机号码格式错误');
                    return;
                  }
                  if (_provider.countdownNum > 0) {
                    return;
                  }
                  _sendCode();
                },
                color: Colors.white,
                child: Text(
                  value,
                  style: TextStyle(color: ColorConfig.C535050, fontSize: 14),
                ));
          })
        ],
      ),
    );
  }

  Widget _setupPwd() {
    return Selector<LoginProvider, bool>(
        selector: (_, provide) => provide.showPwd,
        builder: (context, value, child) {
          return Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
                color: Color(0xFFF4F5F7),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            padding: EdgeInsets.fromLTRB(12, 0, 5, 0),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icon_svg/ic_yanzhengma_normal.svg',
                  width: 22,
                  height: 22,
                ),
                Container(
                  width: 8,
                ),
                Expanded(
                    child: TextField(
                        obscureText: value,
                        style: new TextStyle(color: ColorConfig.C535050),
                        decoration: InputDecoration(
                          hintText: '请输入 6～16 位密码',
                          hintStyle: new TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        controller: _pwdVC,
                        onChanged: (str) {
                          _provider.pwd = str;
                        })),
                OpacityTapWidget(
                    onTap: () {
                      _provider.showPwd = !_provider.showPwd;
                    },
                    child: value
                        ? HDSvgPicture(
                            svgPath: 'assets/icon_svg/ic_eye_hide.svg',
                            width: 44,
                            height: 44,
                          )
                        : HDSvgPicture(
                            svgPath: 'assets/icon_svg/ic_eye_show.svg',
                            width: 44,
                            height: 44,
                          ))
              ],
            ),
          );
        });
  }

  Widget _setupLoginBtn() {
    return Selector<LoginProvider, bool>(
      selector: (_, provide) {
        return _provider.loginEnable;
      },
      builder: (context, value, child) {
        print('2222${value}');
        return CupertinoButton(
          onPressed: value ? _login : null,
          pressedOpacity: 0.8,
          child: Container(
            height: 48,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: MediaQuery.of(context).size.width - 72,
            decoration: BoxDecoration(
                gradient: value
                    ? LinearGradient(
                        colors: [Color(0xFF55c6ff), Color(0xFF0065ff)])
                    : LinearGradient(
                        colors: [Color(0x5F55c6ff), Color(0x6F0065ff)]),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Text('登 录',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        );
      },
    );
  }

  Widget _setupBottomTitle() {
    return Container(
      width: 240,
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 72,
            height: 1,
            color: ColorConfig.CF5F5F8,
          ),
          Text(
            '其他登录方式',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Container(
            width: 72,
            height: 1,
            color: ColorConfig.CF5F5F8,
          )
        ],
      ),
    );
  }

  Widget _setupOtherLogins() {
    print('_setupOtherLogins');
    return Container(
      padding: EdgeInsets.fromLTRB(56, 30, 56, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _setupBtns(),
      ),
    );
  }

  List<Widget> _setupBtns() {
    return new List<Widget>.generate(
        _provider.titles.length, (int index) => _setupItem(index));
  }

  Widget _setupItem(int index) {
    return GestureDetector(
        onTap: () {
          if (index == 0) {
            if (_provider.loginMethod == LoginMethods.code) {
              _provider.loginMethod = LoginMethods.pwd;
            } else {
              _provider.loginMethod = LoginMethods.code;
            }
          }
          if (index == 1) {
            _provider.loginMethod = LoginMethods.wechat;
          }
          if (index == 2) {
            _provider.loginMethod = LoginMethods.taobao;
          }
        },
        child: Container(
          width: 55,
          child: Selector<LoginProvider, List<String>>(
              builder: (_, value, __) {
                return Column(
                  children: <Widget>[
                    value[index] == '短信登录'
                        ? HDSvgPicture(
                            svgPath: 'assets/icon_svg/ic_duanxin.svg',
                            width: 64,
                            height: 64,
                          )
                        : HDSvgPicture(
                            svgPath: 'assets/icon_svg/ic_password_login.svg',
                            width: 64,
                            height: 64,
                          ),
                    Container(
                      height: 8,
                    ),
                    Text(
                      _provider.titles[index],
                      style:
                          TextStyle(fontSize: 12, color: ColorConfig.C535050),
                    )
                  ],
                );
              },
              selector: (_, provide) => provide.titles),
        ));
  }

  _login() {
    LoadingDialog.show();
    Future.delayed(Duration(seconds: 2)).then((e) {
      LoadingDialog.hide();
      MyToast.show(MyToastState.success, '登录成功');
    });
  }

  _sendCode() {
    LoadingDialog.show();
    Future.delayed(Duration(seconds: 2)).then((e) {
      LoadingDialog.hide();
      _provider.countdownNum = 60;
    });
  }

  _goback(bool logined) {
    Navigator.pop(context, logined);
  }
}
