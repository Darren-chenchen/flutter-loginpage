// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact()
    ..name = json['name'] as String
    ..telephone = json['telephone'] as String
    ..mobile = json['mobile'] as String
    ..email = json['email'] as String
    ..fax = json['fax'] as String;
}

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'name': instance.name,
      'telephone': instance.telephone,
      'mobile': instance.mobile,
      'email': instance.email,
      'fax': instance.fax,
    };
