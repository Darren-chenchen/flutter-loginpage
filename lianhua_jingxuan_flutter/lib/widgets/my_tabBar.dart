import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lianhua_jingxuan_flutter/base/color_config.dart';

typedef void MyTabbarItemClick(int);

class MyTabbar extends StatelessWidget{

  final int activeIndex;
  final MyTabbarItemClick onItemClick;

  const MyTabbar({
    Key key,
    this.activeIndex,
    this.onItemClick
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
//    List<String> tabs = ['首页'];
    // TODO: implement build
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: 72 + MediaQuery.of(context).padding.bottom,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("assets/images/bg_tabbar.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: new Row(
              children: _setupItems(context),
            ),
          ),
          Expanded(
            child: Container(height: MediaQuery.of(context).padding.bottom,color: Colors.white,),
          )
        ],
      ),
    );
  }

  List<Widget> _setupItems(BuildContext context) {
    return new List<Widget>.generate(
        5,
            (int index) =>
            _setupItem(index, context));
  }

  _setupItem(int index, BuildContext context) {
    List<String> _normalSvg = ['ic_tab_home_normal.svg', 'ic_tab_fenlei_normal.svg', 'ic_tab_jingjingledao_normal.svg', 'ic_tab_gouwuche_normal.svg', 'ic_tab_mine_normal.svg'];
    List<String> _selectSvg = ['ic_tab_home_selected.svg', 'ic_tab_fenlei_selected.svg', 'ic_tab_jingjingledao_selected.svg', 'ic_tab_gouwuche_selected.svg', 'ic_tab_mine_selected.svg'];
    List<String> _tabText = ['首页', '分类', '鲸鲸乐叨', '购物车', '我的'];
    return GestureDetector(
      onTap: () {
        _ontap(index);
      },
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width*0.2,
        margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: new Column(
          children: <Widget>[
            SvgPicture.asset(
              'assets/icon_svg/' + (activeIndex == index ? _selectSvg[index]:_normalSvg[index]),
              height: 22,
              width: 60,
            ),
            Material(
              child: new Text(_tabText[index], style: TextStyle(fontSize: 12, color: activeIndex == index ? ColorConfig.C0065FF:Colors.grey),),
            )
          ],
        ),
      ),
    );
  }

  _ontap(int index) {
    if (this.onItemClick != null) {
      this.onItemClick(index);
    }
  }
}