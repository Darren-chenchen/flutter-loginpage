// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InputCode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputCode _$InputCodeFromJson(Map<String, dynamic> json) {
  return InputCode(
    type: json['type'] as String,
    code: json['code'] as String,
    qpc: (json['qpc'] as num)?.toDouble(),
    qpcStr: json['qpcStr'] as String,
    unit: json['unit'] as String,
    weight: (json['weight'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$InputCodeToJson(InputCode instance) => <String, dynamic>{
      'type': instance.type,
      'code': instance.code,
      'qpc': instance.qpc,
      'qpcStr': instance.qpcStr,
      'unit': instance.unit,
      'weight': instance.weight,
    };
