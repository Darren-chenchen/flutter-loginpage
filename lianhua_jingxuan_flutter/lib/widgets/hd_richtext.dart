import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HDRichText extends StatelessWidget {
  String str;
  Color color;
  double fontSize;
  double height;
  FontWeight fontWeight;
  TextDecoration decoration;
  final List<InlineSpan> children;

  HDRichText(this.str,
      {this.color,
        this.fontSize = 30,
        this.fontWeight,
        this.children,
        this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: str,
        style: TextStyle(
            fontSize: ScreenUtil().setSp(fontSize),
            height: height,
            color: color,
            decoration: decoration,
            fontWeight: FontWeight.w700),
        children: children));
  }
}

