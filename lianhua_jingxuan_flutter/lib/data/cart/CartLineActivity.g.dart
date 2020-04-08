// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CartLineActivity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartLineActivity _$CartLineActivityFromJson(Map<String, dynamic> json) {
  return CartLineActivity(
    label: json['label'] as String,
    id: json['id'] as String,
    description: json['description'] as String,
    action:
        _$enumDecodeNullable(_$CartLineActivityActionEnumMap, json['action']),
    endDate: json['endDate'] as String,
  );
}

Map<String, dynamic> _$CartLineActivityToJson(CartLineActivity instance) =>
    <String, dynamic>{
      'label': instance.label,
      'id': instance.id,
      'description': instance.description,
      'action': _$CartLineActivityActionEnumMap[instance.action],
      'endDate': instance.endDate,
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

const _$CartLineActivityActionEnumMap = {
  CartLineActivityAction.ADD_ON: 'ADD_ON',
  CartLineActivityAction.VISIT_MORE: 'VISIT_MORE',
  CartLineActivityAction.NONE: 'NONE',
};
