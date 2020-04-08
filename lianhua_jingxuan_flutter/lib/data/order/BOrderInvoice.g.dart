// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderInvoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderInvoice _$BOrderInvoiceFromJson(Map<String, dynamic> json) {
  return BOrderInvoice(
    owner: json['owner'] as String,
    tranNo: json['tranNo'] as String,
    url: json['url'] as String,
    fetchCode: json['fetchCode'] as String,
    state: json['state'] as String,
    title: json['title'] as String,
    taxCode: json['taxCode'] as String,
    message: json['message'] as String,
    code: json['code'] as String,
    num: json['num'] as String,
    date: json['date'] as String,
  )..uuid = json['uuid'] as String;
}

Map<String, dynamic> _$BOrderInvoiceToJson(BOrderInvoice instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'owner': instance.owner,
      'tranNo': instance.tranNo,
      'url': instance.url,
      'fetchCode': instance.fetchCode,
      'state': instance.state,
      'title': instance.title,
      'taxCode': instance.taxCode,
      'message': instance.message,
      'code': instance.code,
      'num': instance.num,
      'date': instance.date,
    };
