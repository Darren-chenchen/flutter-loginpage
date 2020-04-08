import 'package:flutter/material.dart';
import 'package:lianhua_jingxuan_flutter/widgets/stepper/stepper_provider.dart';
import 'package:lianhua_jingxuan_flutter/widgets/tap/opacity_tap_widget.dart';
import 'package:provider/provider.dart';


typedef void OnStepperAdd(double);
typedef void OnStepperReduce(double);

class HDStepper extends StatefulWidget {

  final OnStepperAdd onStepperAdd;
  final OnStepperReduce onStepperReduce;
  /// 是否支持小数
  bool support_decimal = false;
  /// 是否支持输入
  bool support_input = true;
  /// 最小数值
  double minValue = 0.0;
  /// 最大数值
  double maxValue = 999999.0;


  HDStepper({
    Key key,
    this.support_input: true,
    this.support_decimal: false,
    this.minValue: 0.0,
    this.maxValue: 999999.0,
    this.onStepperAdd,
    this.onStepperReduce
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return _HDStepperState();
  }
}

class _HDStepperState extends State<HDStepper> {
  StepperProvider _provider = StepperProvider();
  TextEditingController _inputVC = TextEditingController();

  @override
  void initState() {
// TODO: implement initState
    super.initState();

    _provider.support_decimal = widget.support_decimal;
    _provider.support_input = widget.support_input;
    _provider.minValue = widget.minValue;
    _provider.maxValue = widget.maxValue;
  }

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return ChangeNotifierProvider.value(
      value: _provider,
      child: new Material(
        color: Colors.white,
        child: _initView(),
      ),
    );
  }

  _initView() {
    return Consumer<StepperProvider>(builder: (_, provide, ctx) {
      return Row(
        children: <Widget>[
          OpacityTapWidget(
            onTap: () {
              provide.reduceAcction();
              _inputVC.text = provide.getInputStr();
            },
            child: Container(
              width: 30,
              alignment: Alignment.centerRight,
              child: Icon(Icons.remove, color: provide.reduceEnable ? Colors.black:Color(0x1F333333),size: 16,),
            ),
          ),
          Container(
            width: 40,
            height: 18,
            alignment: Alignment.center,
            color: Color(0xFFF7F8FA),
            child: widget.support_input ? TextField(
                style: new TextStyle(color: Colors.black),
                controller: _inputVC,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                onChanged: (str) {
                  _provider.inputValue = double.parse(str);
                }
            ): Text(provide.getInputStr(), textAlign: TextAlign.center,style: TextStyle(fontSize: 10, color: Color(0xFF535050)),),
          ),
          OpacityTapWidget(
            onTap: () {
              provide.addAcction();
              _inputVC.text = provide.getInputStr();
            },
            child: Container(
              width: 30,
              alignment: Alignment.centerLeft,
              child: Icon(Icons.add, color: provide.addEnable ? Colors.black:Color(0x1F333333),size: 16),
            ),
          ),
        ],
      );
    });
  }
}
