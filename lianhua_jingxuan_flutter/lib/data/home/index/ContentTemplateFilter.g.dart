// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentTemplateFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTemplateFilter _$ContentTemplateFilterFromJson(
    Map<String, dynamic> json) {
  return ContentTemplateFilter(
    keyword: json['keyword'] as String,
    placeIdEq: json['placeIdEq'] as String,
    updateGt: json['updateGt'] as String,
    updateLt: json['updateLt'] as String,
    createGt: json['createGt'] as String,
    createLt: json['createLt'] as String,
  );
}

Map<String, dynamic> _$ContentTemplateFilterToJson(
        ContentTemplateFilter instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'placeIdEq': instance.placeIdEq,
      'updateGt': instance.updateGt,
      'updateLt': instance.updateLt,
      'createGt': instance.createGt,
      'createLt': instance.createLt,
    };
