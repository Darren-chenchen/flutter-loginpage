// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxFreightItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxFreightItem _$JxFreightItemFromJson(Map<String, dynamic> json) {
  return JxFreightItem(
    deliveryType:
        _$enumDecodeNullable(_$DeliveryTypeEnumMap, json['deliveryType']),
    amount: (json['amount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$JxFreightItemToJson(JxFreightItem instance) =>
    <String, dynamic>{
      'deliveryType': _$DeliveryTypeEnumMap[instance.deliveryType],
      'amount': instance.amount,
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
