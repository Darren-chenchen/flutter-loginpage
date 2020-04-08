// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductAttribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) {
  return ProductAttribute(
    name: json['name'] as String,
    options: (json['options'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ProductAttributeToJson(ProductAttribute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'options': instance.options,
    };
