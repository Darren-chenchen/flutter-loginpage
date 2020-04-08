import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lianhua_jingxuan_flutter/base/color_config.dart';

typedef void EmptyItemClick();

class Empty extends StatelessWidget{

  final double width;
  final double height;
  final String svgPath;
  final bool showActionBtn;
  final String detailTitle;
  final EmptyItemClick onItemClick;

  const Empty({
    Key key,
    this.width = 200,
    this.height = 200,
    this.svgPath,
    this.showActionBtn = false,
    this.detailTitle = '暂无数据',
    this.onItemClick
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          SvgPicture.asset(this.svgPath, width: this.width, height: this.height,),
          Container(height: 10,),
          Text(this.detailTitle)
        ],
      ),
    );
  }
}