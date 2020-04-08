// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EquityDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquityDetail _$EquityDetailFromJson(Map<String, dynamic> json) {
  return EquityDetail(
    equityType: json['equityType'] as String,
    equityContent: json['equityContent'] as String,
  );
}

Map<String, dynamic> _$EquityDetailToJson(EquityDetail instance) =>
    <String, dynamic>{
      'equityType': instance.equityType,
      'equityContent': instance.equityContent,
    };
