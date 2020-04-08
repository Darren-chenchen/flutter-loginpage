import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HDText extends StatelessWidget {
  String str;
  Color color;
  double fontSize;
  double height;
  FontWeight fontWeight;
  int maxLines;
  TextAlign textAlign;
  TextOverflow overflow;
  TextDecoration decoration;

  HDText(this.str,
      {this.color,
      this.fontSize = 32,
      this.fontWeight,
      this.maxLines,
      this.textAlign,
      this.overflow,
      this.height,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(str,
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: overflow,
        style: TextStyle(
            color: color,
            height: height,
            decoration: decoration,
            fontSize: ScreenUtil().setSp(fontSize),
            fontWeight: fontWeight));
  }
}

