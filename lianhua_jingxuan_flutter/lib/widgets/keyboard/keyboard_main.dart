import 'package:flutter/material.dart';
import '../my_toast.dart';
import './CustomJPasswordFieldWidget.dart';
import './keyboard_widget.dart';
import './pay_password.dart';

/// 支付密码  +  自定义键盘
///

typedef void OnSure(String);

class PayPasswordPage extends StatefulWidget {
  static final String sName = "enter";

  final OnSure onSure;

  PayPasswordPage({
    this.onSure
  });

  @override
  State<StatefulWidget> createState() {
    return PayPasswordPageState();
  }
}


class PayPasswordPageState extends State<PayPasswordPage> with TickerProviderStateMixin {
  String pwdData = '';

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Animation<Offset> _animation;
  AnimationController _animationController;

  @override
  void initState() {

    _animationController = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _animation = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 1)).animate(_animationController);

    Future.delayed(Duration(milliseconds: 500)).then((value) {
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black.withOpacity(0.6),
      key: _scaffoldKey,
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext c) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SlideTransition(
          position: _animation,
          child: Center(
            child: new Container(
              width: MediaQuery.of(context).size.width - 96,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: new Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        width: MediaQuery.of(context).size.width - 96,
                        child: new Text(
                          '请输入支付密码',
                          style: new TextStyle(fontSize: 18.0, color: Color(0xff333333)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 5,
                        child: SizedBox(
                          width: 60,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.close),
                          ),
                        ),
                      )
                    ],
                  ),

                  ///密码框
                  new Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: _buildPwd(pwdData),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(0, 6, 30, 0),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Text('忘记密码？点这里', style: TextStyle(fontSize: 12),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        MyKeyboard(_onKeyDown)
      ],
    );
  }

  /// 密码键盘 确认按钮 事件
  void onAffirmButton() {
    if (widget.onSure != null) {
      widget.onSure(pwdData);
    }
  }

  void _onKeyDown(KeyEvent data){
    if (data.isDelete()) {
      if (pwdData.length > 0) {
        pwdData = pwdData.substring(0, pwdData.length - 1);
        setState(() {});
      }
    } else if (data.isCommit()) {
      if (pwdData.length != 6) {
        MyToast.show(MyToastState.warning, '密码不足6位，请重试');
        return;
      }
      onAffirmButton();
    } else {
      if (pwdData.length < 6) {
        pwdData += data.key;
      }
      setState(() {});
    }
  }

  Widget _buildPwd(var pwd) {
    return new GestureDetector(
      child: new Container(
        width: 250.0,
        height:40.0,
        child: new CustomJPasswordField(pwd),
      ),
      onTap: () {
      },
    );
  }
}
