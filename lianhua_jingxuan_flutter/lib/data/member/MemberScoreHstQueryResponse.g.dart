// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberScoreHstQueryResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberScoreHstQueryResponse _$MemberScoreHstQueryResponseFromJson(
    Map<String, dynamic> json) {
  return MemberScoreHstQueryResponse(
    memberUuid: json['memberUuid'] as String,
    memberNum: json['memberNum'] as String,
    name: json['name'] as String,
    cardType: json['cardType'] as String,
    cardNo: json['cardNo'] as String,
    physicalCardNum: json['physicalCardNum'] as String,
    total: json['total'] as int,
    scores: (json['scores'] as List)
        ?.map((e) =>
            e == null ? null : ScoreItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MemberScoreHstQueryResponseToJson(
        MemberScoreHstQueryResponse instance) =>
    <String, dynamic>{
      'memberUuid': instance.memberUuid,
      'memberNum': instance.memberNum,
      'name': instance.name,
      'cardType': instance.cardType,
      'cardNo': instance.cardNo,
      'physicalCardNum': instance.physicalCardNum,
      'total': instance.total,
      'scores': instance.scores,
    };
