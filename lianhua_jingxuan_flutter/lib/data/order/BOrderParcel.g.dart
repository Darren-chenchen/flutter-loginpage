// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderParcel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderParcel _$BOrderParcelFromJson(Map<String, dynamic> json) {
  return BOrderParcel(
    owner: json['owner'] as String,
    company: json['company'] as String,
    companyName: json['companyName'] as String,
    number: json['number'] as String,
  )..uuid = json['uuid'] as String;
}

Map<String, dynamic> _$BOrderParcelToJson(BOrderParcel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'owner': instance.owner,
      'company': instance.company,
      'companyName': instance.companyName,
      'number': instance.number,
    };
