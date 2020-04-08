// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product()
    ..imgUrl_s = json['imgUrl_s'] as String
    ..address = json['address'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'imgUrl_s': instance.imgUrl_s,
      'address': instance.address,
      'name': instance.name,
    };
