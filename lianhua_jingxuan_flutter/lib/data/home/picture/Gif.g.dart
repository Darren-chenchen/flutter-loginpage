// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Gif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gif _$GifFromJson(Map<String, dynamic> json) {
  return Gif(
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : BannerImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$GifToJson(Gif instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'images': instance.images,
    };
