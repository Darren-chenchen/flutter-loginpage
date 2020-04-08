import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T> _showAlert<T>({BuildContext context, Widget child}) => showDialog<T>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => child,
    );

/**
 * onlyPositive  : 只有确定按钮
 */
Future<bool> showAlert(BuildContext context, {String title, String negativeText = "取消", String positiveText = "确定", bool onlyPositive = false}) =>
    _showAlert<bool>(
      context: context,
      child: CupertinoAlertDialog(
        title: Text(title),
        actions: _buildAlertActions(context, onlyPositive, negativeText, positiveText),
      ),
    );

List<Widget> _buildAlertActions(BuildContext context, bool onlyPositive, String negativeText, String positiveText) {
  if (onlyPositive) {
    return [
      CupertinoDialogAction(
        child: Text(
          positiveText,
          style: TextStyle(fontSize: 18.0),
        ),
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
    ];
  } else {
    return [
      CupertinoDialogAction(
        child: Text(
          negativeText,
          style: TextStyle(color: Color(0xFF71747E), fontSize: 18.0),
        ),
        isDestructiveAction: true,
        onPressed: () {
          Navigator.pop(context, false);
        },
      ),
      CupertinoDialogAction(
        child: Text(
          positiveText,
          style: TextStyle(fontSize: 18.0),
        ),
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
    ];
  }
}

