// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderPrint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderPrint _$BOrderPrintFromJson(Map<String, dynamic> json) {
  return BOrderPrint(
    ticketInfo: json['ticketInfo'] as String,
    data: json['data'] == null
        ? null
        : BOrder.fromJson(json['data'] as Map<String, dynamic>),
    printTip: json['printTip'] as String,
  );
}

Map<String, dynamic> _$BOrderPrintToJson(BOrderPrint instance) =>
    <String, dynamic>{
      'ticketInfo': instance.ticketInfo,
      'data': instance.data,
      'printTip': instance.printTip,
    };
