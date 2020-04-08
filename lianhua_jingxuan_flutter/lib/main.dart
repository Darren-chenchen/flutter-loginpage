import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:lianhua_jingxuan_flutter/base/app_config.dart';
import 'package:lianhua_jingxuan_flutter/view/mine/login_page.dart';
import 'package:lianhua_jingxuan_flutter/view/mine/login_page_setstate.dart';
import 'package:lianhua_jingxuan_flutter/widgets/hd_global_Inheritedwidget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppGlobalInheritedWidget(
      data: AppGlobalDataModel(),
      child: BotToastInit(
          child: MaterialApp(
              debugShowCheckedModeBanner: false, // 去除debug旗标
              navigatorObservers: [BotToastNavigatorObserver()], //2.注册路由观察者
              home: LoginPage(),
              theme: new ThemeData(
                  fontFamily: 'Futura',
                  scaffoldBackgroundColor: Color(0xFFF5F6F5),
                  primaryColor: new Color.fromRGBO(255, 255, 255, 1)))),
    );
  }
}