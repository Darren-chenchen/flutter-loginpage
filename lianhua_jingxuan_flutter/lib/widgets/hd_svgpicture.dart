
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HDSvgPicture extends StatelessWidget{
  final double width;
  final double height;
  final String svgPath;
  final Color color;

  const HDSvgPicture({
    Key key,
    this.width,
    this.height,
    this.color,
    this.svgPath,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SvgPicture.asset(
      svgPath,
      fit: BoxFit.fitWidth,
      color: color,
      width: width == null ? null:ScreenUtil().setWidth(width),
      height: height == null ? null:ScreenUtil().setWidth(height),
    );
  }
}