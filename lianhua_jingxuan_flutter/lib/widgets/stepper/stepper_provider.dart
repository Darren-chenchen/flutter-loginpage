
import 'package:lianhua_jingxuan_flutter/base/base.dart';

class StepperProvider extends BaseProvider {

  /// 是否支持小数
  bool _support_decimal = false;
  bool get support_decimal => _support_decimal;
  set support_decimal(bool support_decimal) {
    _support_decimal = support_decimal;
    notify();
  }
  /// 是否支持输入
  bool _support_input = true;
  bool get support_input => _support_input;
  set support_input(bool support_input) {
    _support_input = support_input;
    notify();
  }
  /// 最小数值
  double _minValue = 0.0;
  double get minValue => _minValue;
  set minValue(double minValue) {
    _minValue = minValue;
    this.inputValue = minValue;
    notify();
  }
  /// 最大数值
  double _maxValue = 999999.0;
  double get maxValue => _maxValue;
  set maxValue(double maxValue) {
    _maxValue = maxValue;
    notify();
  }

  bool _reduceEnable = true;
  bool get reduceEnable => _reduceEnable;
  set reduceEnable(bool reduceEnable) {
    _reduceEnable = reduceEnable;
    notify();
  }
  bool _addEnable = true;
  bool get addEnable => _addEnable;
  set addEnable(bool addEnable) {
    _addEnable = addEnable;
    notify();
  }

  double _inputValue = 0;
  double get inputValue => _inputValue;
  set inputValue(double inputValue) {
    _inputValue = inputValue;
    if (inputValue <= this.minValue) {
      this.reduceEnable = false;
    } else {
      this.reduceEnable = true;
    }
    if (inputValue >= this.maxValue) {
      this.addEnable = false;
    } else {
      this.addEnable = true;
    }
  }

  String getInputStr() {
    if (this.support_decimal) {
      return '${this.inputValue}';
    } else {
      int value = this.inputValue.toInt();
      return '${value}';
    }
  }

  reduceAcction() {
    if (!this.reduceEnable) {
      return;
    }
    this.inputValue = this.inputValue - 1;
  }
  addAcction() {
    if (!this.addEnable) {
      return;
    }
    this.inputValue = this.inputValue + 1;
  }


  notify() {
    notifyListeners();
  }
}