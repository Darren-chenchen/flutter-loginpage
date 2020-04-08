// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BScoreDeduction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BScoreDeduction _$BScoreDeductionFromJson(Map<String, dynamic> json) {
  return BScoreDeduction(
    score: (json['score'] as num)?.toDouble(),
    amount: (json['amount'] as num)?.toDouble(),
    used: json['used'] as bool,
  );
}

Map<String, dynamic> _$BScoreDeductionToJson(BScoreDeduction instance) =>
    <String, dynamic>{
      'score': instance.score,
      'amount': instance.amount,
      'used': instance.used,
    };
