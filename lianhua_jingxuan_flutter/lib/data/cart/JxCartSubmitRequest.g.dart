// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartSubmitRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartSubmitRequest _$JxCartSubmitRequestFromJson(Map<String, dynamic> json) {
  return JxCartSubmitRequest(
    uuid: json['uuid'] as String,
    freight: (json['freight'] as num)?.toDouble(),
    packageAmt: (json['packageAmt'] as num)?.toDouble(),
    deliveryType:
        _$enumDecodeNullable(_$DeliveryTypeEnumMap, json['deliveryType']),
    deviceId: json['deviceId'] as String,
    consignee: json['consignee'] == null
        ? null
        : BOrderConsignee.fromJson(json['consignee'] as Map<String, dynamic>),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartSubmitRequestToJson(
        JxCartSubmitRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'uuid': instance.uuid,
      'freight': instance.freight,
      'packageAmt': instance.packageAmt,
      'deliveryType': _$DeliveryTypeEnumMap[instance.deliveryType],
      'deviceId': instance.deviceId,
      'consignee': instance.consignee,
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
