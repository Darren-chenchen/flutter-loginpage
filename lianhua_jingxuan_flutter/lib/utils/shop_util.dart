
import 'package:date_format/date_format.dart';
import 'package:lianhua_jingxuan_flutter/base/app_config.dart';
import 'package:lianhua_jingxuan_flutter/data/shop/Shop.dart';
import 'package:lianhua_jingxuan_flutter/tools/shop_tool.dart';

class ShopUtil {
  // 判断门店是否休息中   当前时间【不在】营业时间范围内或当前时间【在】营业时间范围内但【当前时间+1小时】大于最晚营业时间
  static getShopClosed(Shop shop) {
    if (shop.businessHour == null) {
      return false;
    }
    DateTime now = new DateTime.now();
    bool result = true;
    for( var i = 0 ; i < shop.businessHour.length; i++) {
      String hourString = shop.businessHour[i];
      List<String> timeStrings = hourString.split("-");
      String str1 = timeStrings[0];
      String str2 = timeStrings[1];
      /// 防止 8:00 的情况，改情况DateTime.parse会报错
      String startTimeString = formatDate(now, [yyyy, '-', mm, '-', dd, ' ']) + (str1.length == 4 ? '0${str1}':str1) + ":00";
      String endTimeString = formatDate(now, [yyyy, '-', mm, '-', dd, ' ']) + (str2.length == 4 ? '0${str2}':str2) + ":00";
      DateTime startTime = DateTime.tryParse(startTimeString);
      DateTime endTime = DateTime.tryParse(endTimeString);
      int nowTime = now.microsecondsSinceEpoch;
      if (nowTime > startTime.microsecondsSinceEpoch && nowTime < endTime.microsecondsSinceEpoch) {
        result = false;
        continue;
      }
    }
    return result;
  }

  /// 是否是最近光顾的门店
  static hasAttendRecently(Shop shop) {
    List<Shop> list = AppConfig.shopTools.getHistoryShops();
    if (list.length > 0) {
      int i = list.indexWhere((item) {
        if (item != null) {
          return item.id == shop.id;
        }
        return false;
      });
      if (i != -1) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  /// 显示最近光顾
  static showRecentAttend(Shop shop) {
    bool closed = ShopUtil.getShopClosed(shop);
    /// 是否是最近光顾
    bool recent = ShopUtil.hasAttendRecently(shop);
    if (!closed && recent) {
      return true;
    }
    return false;
  }
  /// 门店是休息中，可预约下单
  static showRestCanOrder(Shop shop) {
    bool closed = ShopUtil.getShopClosed(shop);
    bool canOrder = shop.supportReservation;
    return closed && canOrder;
  }
  /// 休息中，不可预约下单
  static showRestCannotOrder(Shop shop) {
    bool closed = ShopUtil.getShopClosed(shop);
    bool canOrder = shop.supportReservation;
    return closed && !canOrder;
  }


}