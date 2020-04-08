// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentDetailDataArg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDetailDataArg _$ContentDetailDataArgFromJson(Map<String, dynamic> json) {
  return ContentDetailDataArg(
    templateId: json['templateId'] as String,
    shopSkus: (json['shopSkus'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
    categoryId: json['categoryId'] as String,
  );
}

Map<String, dynamic> _$ContentDetailDataArgToJson(
        ContentDetailDataArg instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'categoryId': instance.categoryId,
      'shopSkus': instance.shopSkus,
    };
