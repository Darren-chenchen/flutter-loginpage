// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentDeliveryCycleCondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDeliveryCycleCondition _$ContentDeliveryCycleConditionFromJson(
    Map<String, dynamic> json) {
  return ContentDeliveryCycleCondition(
    orderNo: json['orderNo'] as int,
    hourBegin: json['hourBegin'] as int,
    minuteBegin: json['minuteBegin'] as int,
    hourEnd: json['hourEnd'] as int,
    minuteEnd: json['minuteEnd'] as int,
  );
}

Map<String, dynamic> _$ContentDeliveryCycleConditionToJson(
        ContentDeliveryCycleCondition instance) =>
    <String, dynamic>{
      'orderNo': instance.orderNo,
      'hourBegin': instance.hourBegin,
      'minuteBegin': instance.minuteBegin,
      'hourEnd': instance.hourEnd,
      'minuteEnd': instance.minuteEnd,
    };
