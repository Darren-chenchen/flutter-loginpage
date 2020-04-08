// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PmsDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PmsDetail _$PmsDetailFromJson(Map<String, dynamic> json) {
  return PmsDetail(
    activityId: json['activityId'] as String,
    label: json['label'] as String,
    execOpportunity: json['execOpportunity'] as String,
    promCls: json['promCls'] as String,
    startTime: json['startTime'] as String,
    endTime: json['endTime'] as String,
  );
}

Map<String, dynamic> _$PmsDetailToJson(PmsDetail instance) => <String, dynamic>{
      'activityId': instance.activityId,
      'label': instance.label,
      'execOpportunity': instance.execOpportunity,
      'promCls': instance.promCls,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
