// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartSettleRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartSettleRequest _$JxCartSettleRequestFromJson(Map<String, dynamic> json) {
  return JxCartSettleRequest(
    deliveryType:
        _$enumDecodeNullable(_$DeliveryTypeEnumMap, json['deliveryType']),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartSettleRequestToJson(
        JxCartSettleRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'deliveryType': _$DeliveryTypeEnumMap[instance.deliveryType],
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
