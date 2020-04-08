// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AdvanceSale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvanceSale _$AdvanceSaleFromJson(Map<String, dynamic> json) {
  return AdvanceSale(
    titleBackgroundColor: json['titleBackgroundColor'] as String,
    titleFontColor: json['titleFontColor'] as String,
    timeBackgroundColor: json['timeBackgroundColor'] as String,
    timeFontColor: json['timeFontColor'] as String,
    createdBackgroundColor: json['createdBackgroundColor'] as String,
    createdFontColor: json['createdFontColor'] as String,
    inProgressBackgroundColor: json['inProgressBackgroundColor'] as String,
    inProgressFontColor: json['inProgressFontColor'] as String,
    showMessage:
        (json['showMessage'] as List)?.map((e) => e as String)?.toList(),
    activityId: (json['activityId'] as List)?.map((e) => e as String)?.toList(),
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$AdvanceSaleToJson(AdvanceSale instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'titleBackgroundColor': instance.titleBackgroundColor,
      'titleFontColor': instance.titleFontColor,
      'timeBackgroundColor': instance.timeBackgroundColor,
      'timeFontColor': instance.timeFontColor,
      'createdBackgroundColor': instance.createdBackgroundColor,
      'createdFontColor': instance.createdFontColor,
      'inProgressBackgroundColor': instance.inProgressBackgroundColor,
      'inProgressFontColor': instance.inProgressFontColor,
      'showMessage': instance.showMessage,
      'activityId': instance.activityId,
    };
