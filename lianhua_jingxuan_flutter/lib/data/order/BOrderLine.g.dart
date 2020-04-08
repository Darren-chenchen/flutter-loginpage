// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderLine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderLine _$BOrderLineFromJson(Map<String, dynamic> json) {
  return BOrderLine(
    lineNo: json['lineNo'] as int,
    inputCode: json['inputCode'] as String,
    gdInputCode: json['gdInputCode'] as String,
    inputType: json['inputType'] as int,
    gdCode: json['gdCode'] as String,
    gdName: json['gdName'] as String,
    gdGid: json['gdGid'] as String,
    qty: (json['qty'] as num)?.toDouble(),
    price: (json['price'] as num)?.toDouble(),
    amount: (json['amount'] as num)?.toDouble(),
    realAmt: (json['realAmt'] as num)?.toDouble(),
    rtlPrc: (json['rtlPrc'] as num)?.toDouble(),
    mbrPrice: (json['mbrPrice'] as num)?.toDouble(),
    qpc: (json['qpc'] as num)?.toDouble(),
    qpcStr: json['qpcStr'] as String,
    barcode: json['barcode'] as String,
    weightUnit: json['weightUnit'] as bool,
    expireDate: json['expireDate'] as String,
    gdTag: json['gdTag'] as String,
    imgUrl: json['imgUrl'] as String,
    deptCode: json['deptCode'] as String,
    vendorCode: json['vendorCode'] as String,
    priceVariable: json['priceVariable'] as bool,
    unit: json['unit'] as String,
    sortCode: json['sortCode'] as String,
    effective: json['effective'] as bool,
    invQty: (json['invQty'] as num)?.toDouble(),
    selected: json['selected'] as bool,
    prcVarType: json['prcVarType'] as int,
    availableReturnQty: (json['availableReturnQty'] as num)?.toDouble(),
  )..uuid = json['uuid'] as String;
}

Map<String, dynamic> _$BOrderLineToJson(BOrderLine instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'lineNo': instance.lineNo,
      'inputCode': instance.inputCode,
      'gdInputCode': instance.gdInputCode,
      'inputType': instance.inputType,
      'gdCode': instance.gdCode,
      'gdName': instance.gdName,
      'gdGid': instance.gdGid,
      'qty': instance.qty,
      'price': instance.price,
      'amount': instance.amount,
      'realAmt': instance.realAmt,
      'rtlPrc': instance.rtlPrc,
      'mbrPrice': instance.mbrPrice,
      'qpc': instance.qpc,
      'qpcStr': instance.qpcStr,
      'barcode': instance.barcode,
      'weightUnit': instance.weightUnit,
      'expireDate': instance.expireDate,
      'gdTag': instance.gdTag,
      'imgUrl': instance.imgUrl,
      'deptCode': instance.deptCode,
      'vendorCode': instance.vendorCode,
      'priceVariable': instance.priceVariable,
      'unit': instance.unit,
      'sortCode': instance.sortCode,
      'effective': instance.effective,
      'invQty': instance.invQty,
      'selected': instance.selected,
      'prcVarType': instance.prcVarType,
      'availableReturnQty': instance.availableReturnQty,
    };
