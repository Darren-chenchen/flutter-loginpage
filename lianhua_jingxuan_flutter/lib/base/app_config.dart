import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lianhua_jingxuan_flutter/tools/app_tool.dart';
import 'package:lianhua_jingxuan_flutter/tools/mutual_tool.dart';
import 'package:lianhua_jingxuan_flutter/tools/net_tool.dart';
import 'package:lianhua_jingxuan_flutter/tools/search_tool.dart';
import 'package:lianhua_jingxuan_flutter/tools/shop_tool.dart';
import 'package:lianhua_jingxuan_flutter/tools/user_tool.dart';

class AppConfig {

  static const baseUrl = 'xxxxxx';



  static var AppW = ScreenUtil.screenWidthDp;
  static var AppH = ScreenUtil.screenHeightDp;

  //debug:false  release: true
  static const bool inProduction = const bool.fromEnvironment("dart.vm.product");

  // 交互相关
  /// flutter 调用原生
  static const mutualId = "lianhua_jingxuan_flutter/mutual";
  static const platform = const MethodChannel(mutualId);
  /// 原生传递给flutter的通道
  static const EventChannel eventChannel = const EventChannel("lianhua_jingxuan_flutter/event");


  static Widget getPlaceHoder([width, height]) {
    return new SvgPicture.asset('assets/empty_svg/img_goods_load_failed144(1).svg',
        width: width, height: height);
//    return new Container(
//      width: width,
//      height: height,
//      child: new Image.asset('images/placehoder_img.png',fit: BoxFit.cover,));
  }

  static Widget getUserPlaceHoder(width, height) {
    return new Container(
        width: width,
        height: height,
        child: new Image.asset('images/nologin.png'));
  }

  static Widget getLoadingPlaceHoder(width, height) {
    return new SizedBox(
        width: width,
        height: height,
        child: const CircularProgressIndicator(strokeWidth: 2.0)
    );
  }


  static Widget initLoading(bool showEmpty, [String emptyText = '暂无数据']) {
    return new Center(
      child: showEmpty ? initEmpty(emptyText) : SizedBox(
          width: 35.0,
          height: 35.0,
          child: const CircularProgressIndicator(strokeWidth: 2.0)
      ),
    );
  }

  static Widget initEmpty(String emptyText) {
    return new Container(
      padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
      child: new Column(
        children: <Widget>[
          new Icon(Icons.hourglass_empty, color: Colors.grey,size: 60,),
          new Container(height: 10,),
          new Text(emptyText, style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }

  static UserTools userTools;
  static AppTools appTools;
  static NetTools netTools;
  static ShopTools shopTools;
  static SearchTools searchTools;

  static init() async {
    userTools = await UserTools.getInstance();
    appTools = await AppTools.getInstance();
    netTools = await NetTools.instance;
    shopTools = await ShopTools.instance;
    searchTools = await SearchTools.instance;
  }
}
