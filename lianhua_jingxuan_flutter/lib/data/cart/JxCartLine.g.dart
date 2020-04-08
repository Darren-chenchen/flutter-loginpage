// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartLine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartLine _$JxCartLineFromJson(Map<String, dynamic> json) {
  return JxCartLine(
    lineNo: json['lineNo'] as int,
    inputCode: json['inputCode'] as String,
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
    imgUrl: json['imgUrl'] as String,
    unit: json['unit'] as String,
    sortCode: json['sortCode'] as String,
    effective: json['effective'] as bool,
    invQty: (json['invQty'] as num)?.toDouble(),
    selected: json['selected'] as bool,
    deliveryType:
        _$enumDecodeNullable(_$DeliveryTypeEnumMap, json['deliveryType']),
    activity: json['activity'] == null
        ? null
        : CartLineActivity.fromJson(json['activity'] as Map<String, dynamic>),
    skuActivity: json['skuActivity'] == null
        ? null
        : CartLineActivity.fromJson(
            json['skuActivity'] as Map<String, dynamic>),
    gift: json['gift'] as bool,
    giftActivityId: json['giftActivityId'] as String,
  );
}

Map<String, dynamic> _$JxCartLineToJson(JxCartLine instance) =>
    <String, dynamic>{
      'lineNo': instance.lineNo,
      'inputCode': instance.inputCode,
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
      'imgUrl': instance.imgUrl,
      'unit': instance.unit,
      'sortCode': instance.sortCode,
      'effective': instance.effective,
      'invQty': instance.invQty,
      'selected': instance.selected,
      'deliveryType': _$DeliveryTypeEnumMap[instance.deliveryType],
      'activity': instance.activity,
      'skuActivity': instance.skuActivity,
      'gift': instance.gift,
      'giftActivityId': instance.giftActivityId,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DeliveryTypeEnumMap = {
  DeliveryType.NORMAL: 'NORMAL',
  DeliveryType.SELF_PICK_UP: 'SELF_PICK_UP',
  DeliveryType.HOME_DELIVERY: 'HOME_DELIVERY',
  DeliveryType.SELF_OR_HOME: 'SELF_OR_HOME',
};
