
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum MyToastState {
  success,
  fail,
  warning
}

class MyToast {

  static showText(String text) {
    BotToast.showText(text:text, align: Alignment(0, 0.4), contentColor: Colors.black);
  }

  static show(MyToastState state, String text) {
    BotToast.showCustomLoading(
        clickClose: true,
        allowClick: true,
        duration: Duration(seconds: 2),
        backgroundColor: Colors.transparent,
        toastBuilder: (cancelFunc) {
          return _CustomToatWidget(cancelFunc: cancelFunc, state: state, contentText: text);
        }
    );
  }
}

class _CustomToatWidget extends StatefulWidget {
  final CancelFunc cancelFunc;
  final MyToastState state;
  final String contentText;

  const _CustomToatWidget({Key key, this.cancelFunc, this.state, this.contentText}) : super(key: key);

  @override
  __CustomToastWidgetState createState() => __CustomToastWidgetState();
}

class __CustomToastWidgetState extends State<_CustomToatWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget.state == MyToastState.success ? _setupSuccess():_setupOther(),
    );
  }

  Widget _setupSuccess() {
    return Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset('assets/icon_svg/ic_toast_succeed_line.svg', width: 48,height: 48,),
            new Container(
              margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Text(
                widget.contentText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _setupOther() {
    return Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(widget.state == MyToastState.warning ? 'assets/icon_svg/ic_toast_warning.svg':'assets/icon_svg/ic_toast_clean.svg', width: 22,height: 22,),
            new Container(
              margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
              width: 210,
              child: Text(
                widget.contentText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/**
 * 显示loading框  ,
 */
class LoadingDialog {

  static CancelFunc cancelFunc;

  static show() {

    BotToast.showCustomLoading(
        clickClose: false,
        allowClick: false,
        duration: Duration(seconds: 60),
        backgroundColor: Color(0x6F000000),
        toastBuilder: (cancelFunc) {
          LoadingDialog.cancelFunc = cancelFunc;
          return _CustomLoadWidget(cancelFunc: cancelFunc);
        }
    );
  }

  static hide() {
    LoadingDialog.cancelFunc();
  }
}

class _CustomLoadWidget extends StatefulWidget {
  final CancelFunc cancelFunc;

  const _CustomLoadWidget({Key key, this.cancelFunc}) : super(key: key);

  @override
  __CustomLoadWidgetState createState() => __CustomLoadWidgetState();
}

class __CustomLoadWidgetState extends State<_CustomLoadWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(!bool.fromEnvironment("dart.vm.product")),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Container(
              width: 120,
              height: 120,
              color: Colors.transparent,
              child: const Center(
                child: SizedBox(
                    width: 45.0,
                    height: 45.0,
                    child: const CircularProgressIndicator(strokeWidth: 2.0)
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
