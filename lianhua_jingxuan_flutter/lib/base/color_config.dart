import 'package:flutter/material.dart';

class ColorConfig {

  static const C55C6FF = Color(0xFF55C6FF);
  static const C0065FF = Color(0xFF0065FF); //主题色
  static const C448AFF = Color(0x7F448AFF);

  static const C535050 = Color(0xFF535050);
  static const C212224 = Color(0xFF212224);

  static const C1EC66D = Color(0xFF1EC66D);

  static const C71747E = Color(0xFF71747E);
  static const CF6F6F6 = Color(0xFFF6F6F6);
  static const CF7F8FA = Color(0xFFF7F8FA);

  static const CF5F5F8 = Color(0xFFF5F5F8);
  static const Cdddddd = Color(0xFFdddddd);
  static const CE5E5E5 = Color(0xFFE5E5E5);

  static const CFF5230 = Color(0xFFFF5230);
  static const CFE6248 = Color(0xFFFE6248);
  static const CFE4954 = Color(0xFFFE4954);


  static const CFEB910 = Color(0xFFFEB910);
  static const CFF8400 = Color(0xFFFF8400);

  static const CFFA700 = Color(0xFFFFA700);

  static const CE6E6EF = Color(0xFFE6E6EF);
  static const CA8A8B6 = Color(0xFFA8A8B6);

  static const CB3CBF7 = Color(0xFFB3CBF7);

  /// Construct a color from a hex code string, of the format #RRGGBB.
  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
