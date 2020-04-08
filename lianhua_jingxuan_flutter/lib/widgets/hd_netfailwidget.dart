
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lianhua_jingxuan_flutter/base/color_config.dart';
import 'package:lianhua_jingxuan_flutter/widgets/hd_text.dart';

typedef void HDNetFailWidgetClick();

class HDNetFailWidget extends StatelessWidget{

  final double width;
  final double height;
  final HDNetFailWidgetClick reloadClick;

  const HDNetFailWidget({
    Key key,
    this.width = 100,
    this.height = 100,
    this.reloadClick
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/ic_Loadfailure.png', width: this.width, height: this.height,),
          Container(height: 4,),
          HDText('网络请求失败，请稍后重试~', fontSize: 28,),
          Container(height: 8,),
          FlatButton(
            color: ColorConfig.C0065FF,
            onPressed: () {
              if (reloadClick != null) {
                reloadClick();
              }
            },
            child: HDText('重新加载', fontSize: 28,color: Colors.white,),
          )
        ],
      ),
    );
  }
}