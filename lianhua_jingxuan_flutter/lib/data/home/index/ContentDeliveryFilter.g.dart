// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentDeliveryFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDeliveryFilter _$ContentDeliveryFilterFromJson(
    Map<String, dynamic> json) {
  return ContentDeliveryFilter(
    dateBeginLtEq: json['dateBeginLtEq'] as String,
    dateEndGtEq: json['dateEndGtEq'] as String,
    hourBeginLtEq: json['hourBeginLtEq'] as int,
    hourEndGtEq: json['hourEndGtEq'] as int,
    minuteBeginLtEq: json['minuteBeginLtEq'] as int,
    minuteEndGtEq: json['minuteEndGtEq'] as int,
    placeIdEq: json['placeIdEq'] as String,
    placeNoEq: json['placeNoEq'] as int,
    enable: json['enable'] as bool,
  );
}

Map<String, dynamic> _$ContentDeliveryFilterToJson(
        ContentDeliveryFilter instance) =>
    <String, dynamic>{
      'dateBeginLtEq': instance.dateBeginLtEq,
      'dateEndGtEq': instance.dateEndGtEq,
      'hourBeginLtEq': instance.hourBeginLtEq,
      'hourEndGtEq': instance.hourEndGtEq,
      'minuteBeginLtEq': instance.minuteBeginLtEq,
      'minuteEndGtEq': instance.minuteEndGtEq,
      'placeIdEq': instance.placeIdEq,
      'placeNoEq': instance.placeNoEq,
      'enable': instance.enable,
    };
