

class CommonUtil {
  static String formatDuration(Duration position) {
    final ms = position.inMilliseconds;

    int seconds = ms ~/ 1000;
    final int hours = seconds ~/ 3600;
    seconds = seconds % 3600;
    var minutes = seconds ~/ 60;
    seconds = seconds % 60;

    final hoursString = hours >= 10 ? '$hours' : hours == 0 ? '00' : '0$hours';

    final minutesString =
    minutes >= 10 ? '$minutes' : minutes == 0 ? '00' : '0$minutes';

    final secondsString =
    seconds >= 10 ? '$seconds' : seconds == 0 ? '00' : '0$seconds';

    final formattedTime =
        '${hoursString == '00' ? '' : hoursString + ':'}$minutesString:$secondsString';

    return formattedTime;
  }
  static padNum(String pad) {
    var num = '${(double.parse(pad) / 60).toInt()}';
    var len = num.toString().length;
    while (len < 2) {
      num = '0' + num;
      len++;
    }
    return num;
  }
  static dealDuration(String duration) {
    var ge = '${(double.parse(duration) % 60).toInt()}';
    var miao = '00';
    if (ge.length == 1) {
      miao = '0' + ge;
    } else {
      miao = ge;
    }
    return padNum(duration) + ':$miao';
  }

  static isPassword(String password) {

    /// 6-16为任意字符
    return password.length >=6 && password.length <= 16;

    /// 6-12为数字与字母的组合
//    return new RegExp(r'^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$').hasMatch(password);
  }

  static isEmail(String email) {
    return new RegExp(r'^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$').hasMatch(email);
  }

  static isPhone(String phone) {
    return new RegExp(r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$').hasMatch(phone);
  }

  /// 隐藏手机号中间4位
  static String hiddenPhone(String phone) {
    var s = phone.substring(0, 3);
    var end = phone.substring(7, 11);
    return s + '****' + end;
  }

  /// 判断2个数组模型是否相同
  static isEqual(preList, newList) {

  }
}