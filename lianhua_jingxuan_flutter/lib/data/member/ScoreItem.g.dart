// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ScoreItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreItem _$ScoreItemFromJson(Map<String, dynamic> json) {
  return ScoreItem(
    points: json['points'] as String,
    pointsType: json['pointsType'] as String,
    pointsComment: json['pointsComment'] as String,
    creationDate: json['creationDate'] as String,
  );
}

Map<String, dynamic> _$ScoreItemToJson(ScoreItem instance) => <String, dynamic>{
      'points': instance.points,
      'pointsType': instance.pointsType,
      'pointsComment': instance.pointsComment,
      'creationDate': instance.creationDate,
    };
