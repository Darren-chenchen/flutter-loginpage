// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberEquity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberEquity _$MemberEquityFromJson(Map<String, dynamic> json) {
  return MemberEquity(
    scoreBalance: (json['scoreBalance'] as num)?.toDouble(),
    couponQty: json['couponQty'] as int,
  );
}

Map<String, dynamic> _$MemberEquityToJson(MemberEquity instance) =>
    <String, dynamic>{
      'scoreBalance': instance.scoreBalance,
      'couponQty': instance.couponQty,
    };
