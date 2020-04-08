// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CodeQty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeQty _$CodeQtyFromJson(Map<String, dynamic> json) {
  return CodeQty(
    code: json['code'] as String,
    qty: (json['qty'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CodeQtyToJson(CodeQty instance) => <String, dynamic>{
      'code': instance.code,
      'qty': instance.qty,
    };
