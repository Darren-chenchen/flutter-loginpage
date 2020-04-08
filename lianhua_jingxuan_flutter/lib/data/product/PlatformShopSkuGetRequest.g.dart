// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlatformShopSkuGetRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformShopSkuGetRequest _$PlatformShopSkuGetRequestFromJson(
    Map<String, dynamic> json) {
  return PlatformShopSkuGetRequest(
    memberInfo: json['memberInfo'] == null
        ? null
        : MemberInfo.fromJson(json['memberInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlatformShopSkuGetRequestToJson(
        PlatformShopSkuGetRequest instance) =>
    <String, dynamic>{
      'memberInfo': instance.memberInfo,
    };
