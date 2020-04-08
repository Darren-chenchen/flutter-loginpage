// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxIndex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxIndex _$JxIndexFromJson(Map<String, dynamic> json) {
  return JxIndex(
    cartTotalQty: json['cartTotalQty'] as int,
    confirmedOrderCount: json['confirmedOrderCount'] as int,
    deliveredOrderCount: json['deliveredOrderCount'] as int,
    receivedOrderCount: json['receivedOrderCount'] as int,
  );
}

Map<String, dynamic> _$JxIndexToJson(JxIndex instance) => <String, dynamic>{
      'cartTotalQty': instance.cartTotalQty,
      'confirmedOrderCount': instance.confirmedOrderCount,
      'deliveredOrderCount': instance.deliveredOrderCount,
      'receivedOrderCount': instance.receivedOrderCount,
    };
