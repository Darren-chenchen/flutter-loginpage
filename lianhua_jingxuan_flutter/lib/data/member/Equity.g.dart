// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Equity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equity _$EquityFromJson(Map<String, dynamic> json) {
  return Equity(
    equityType: json['equityType'] as String,
    equityName: json['equityName'] as String,
    equitySource: json['equitySource'] as String,
    equityDetails: (json['equityDetails'] as List)
        ?.map((e) =>
            e == null ? null : EquityDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cardType: json['cardType'] as String,
    cardNo: json['cardNo'] as String,
    beginDate: json['beginDate'] as String,
    endDate: json['endDate'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$EquityToJson(Equity instance) => <String, dynamic>{
      'equityType': instance.equityType,
      'equityName': instance.equityName,
      'equitySource': instance.equitySource,
      'equityDetails': instance.equityDetails,
      'cardType': instance.cardType,
      'cardNo': instance.cardNo,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'status': instance.status,
    };
