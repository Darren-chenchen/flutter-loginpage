// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return Score(
    cardType: json['cardType'] as String,
    cardNo: json['cardNo'] as String,
    cardName: json['cardName'] as String,
    score: json['score'] as String,
    physicalCardNum: json['physicalCardNum'] as String,
    virtualCardNum: json['virtualCardNum'] as String,
    cardLevel: json['cardLevel'] as String,
    cardLevelName: json['cardLevelName'] as String,
    endDate: json['endDate'] as String,
  );
}

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'cardType': instance.cardType,
      'cardNo': instance.cardNo,
      'cardName': instance.cardName,
      'score': instance.score,
      'physicalCardNum': instance.physicalCardNum,
      'virtualCardNum': instance.virtualCardNum,
      'cardLevel': instance.cardLevel,
      'cardLevelName': instance.cardLevelName,
      'endDate': instance.endDate,
    };
