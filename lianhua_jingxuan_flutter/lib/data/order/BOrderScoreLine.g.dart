// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderScoreLine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderScoreLine _$BOrderScoreLineFromJson(Map<String, dynamic> json) {
  return BOrderScoreLine(
    tranId: json['tranId'] as String,
    scoreSubject: json['scoreSubject'] as String,
    scoreType: json['scoreType'] as String,
    score: (json['score'] as num)?.toDouble(),
    used: json['used'] as bool,
  );
}

Map<String, dynamic> _$BOrderScoreLineToJson(BOrderScoreLine instance) =>
    <String, dynamic>{
      'tranId': instance.tranId,
      'scoreSubject': instance.scoreSubject,
      'scoreType': instance.scoreType,
      'score': instance.score,
      'used': instance.used,
    };
