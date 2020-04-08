// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BannerImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerImage _$BannerImageFromJson(Map<String, dynamic> json) {
  return BannerImage(
    imageUrl: json['imageUrl'] as String,
    redirectUrl: json['redirectUrl'] as String,
    redirectType: json['redirectType'] as String,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$BannerImageToJson(BannerImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
      'redirectUrl': instance.redirectUrl,
      'redirectType': instance.redirectType,
    };
