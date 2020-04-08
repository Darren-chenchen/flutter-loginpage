// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentData _$ContentDataFromJson(Map<String, dynamic> json) {
  return ContentData(
    shouyedingbu: (json['shouyedingbu'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jingxuanhuodong: (json['jingxuanhuodong'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jingxuandapai: (json['jingxuandapai'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jingjingledao: (json['jingjingledao'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shouyebanner: (json['shouyebanner'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shouyeleimu: (json['shouyeleimu'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jingxintuijian: (json['jingxintuijian'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDetailData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ContentDataToJson(ContentData instance) =>
    <String, dynamic>{
      'shouyedingbu': instance.shouyedingbu,
      'jingxuanhuodong': instance.jingxuanhuodong,
      'jingxuandapai': instance.jingxuandapai,
      'jingjingledao': instance.jingjingledao,
      'shouyebanner': instance.shouyebanner,
      'shouyeleimu': instance.shouyeleimu,
      'jingxintuijian': instance.jingxintuijian,
    };
