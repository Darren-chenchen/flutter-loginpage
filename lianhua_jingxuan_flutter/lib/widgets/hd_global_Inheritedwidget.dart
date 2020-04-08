import 'package:flutter/cupertino.dart';

class AppGlobalDataModel {
  int shopcarCount;

  AppGlobalDataModel({this.shopcarCount = 0});

  void setShopCar(int shopcarCount) {
    this.shopcarCount = shopcarCount;
  }
}

///主Widget 继承InheritedWidget 存放数据
class AppGlobalInheritedWidget extends InheritedWidget {
  final AppGlobalDataModel data;

  AppGlobalInheritedWidget({@required this.data, @required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(AppGlobalInheritedWidget oldWidget) {
    return data != oldWidget.data;
  }

  static AppGlobalDataModel of(BuildContext context) {
    final AppGlobalInheritedWidget globalwidget =
    context.dependOnInheritedWidgetOfExactType<AppGlobalInheritedWidget>();
    return globalwidget.data;
  }
}