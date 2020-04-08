// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return Shop()
    ..id = json['id'] as String
    ..code = json['code'] as String
    ..name = json['name'] as String
    ..type = json['type'] as String
    ..contact = json['contact'] == null
        ? null
        : Contact.fromJson(json['contact'] as Map<String, dynamic>)
    ..address = json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>)
    ..tags = (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..image = json['image'] as String
    ..facadeImage = json['facadeImage'] as String
    ..images = (json['images'] as List)?.map((e) => e as String)?.toList()
    ..descriptions = (json['descriptions'] as List)
        ?.map((e) =>
            e == null ? null : Description.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..businessCircles =
        (json['businessCircles'] as List)?.map((e) => e as String)?.toList()
    ..level = json['level'] as String
    ..businessHour =
        (json['businessHour'] as List)?.map((e) => e as String)?.toList()
    ..servicePhoneNumber = json['servicePhoneNumber'] as String
    ..remaindPhoneNumber = json['remaindPhoneNumber'] as String
    ..complainPhoneNumber = json['complainPhoneNumber'] as String
    ..complainPhoneHour = json['complainPhoneHour'] as String
    ..deliveries =
        (json['deliveries'] as List)?.map((e) => e as String)?.toList()
    ..reference = json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>)
    ..supportReservation = json['supportReservation'] as bool;
}

Map<String, dynamic> _$ShopToJson(Shop instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'contact': instance.contact,
      'address': instance.address,
      'tags': instance.tags,
      'image': instance.image,
      'facadeImage': instance.facadeImage,
      'images': instance.images,
      'descriptions': instance.descriptions,
      'businessCircles': instance.businessCircles,
      'level': instance.level,
      'businessHour': instance.businessHour,
      'servicePhoneNumber': instance.servicePhoneNumber,
      'remaindPhoneNumber': instance.remaindPhoneNumber,
      'complainPhoneNumber': instance.complainPhoneNumber,
      'complainPhoneHour': instance.complainPhoneHour,
      'deliveries': instance.deliveries,
      'reference': instance.reference,
      'supportReservation': instance.supportReservation,
    };
