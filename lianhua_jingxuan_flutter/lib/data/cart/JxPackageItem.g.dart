// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxPackageItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxPackageItem _$JxPackageItemFromJson(Map<String, dynamic> json) {
  return JxPackageItem(
    packageType:
        _$enumDecodeNullable(_$PackageTypeEnumMap, json['packageType']),
    amount: (json['amount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$JxPackageItemToJson(JxPackageItem instance) =>
    <String, dynamic>{
      'packageType': _$PackageTypeEnumMap[instance.packageType],
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

const _$PackageTypeEnumMap = {
  PackageType.NORMAL: 'NORMAL',
  PackageType.NONE: 'NONE',
};
