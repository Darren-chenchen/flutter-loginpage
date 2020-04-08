// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) {
  return BaseResponse<T>(
    code: json['code'] as int,
    total: json['total'] as int,
    totalPage: json['totalPage'] as int,
    data: json['data'],
    msg: json['msg'] as String,
    success: json['success'] as bool,
    echoMessage: json['echoMessage'] as String,
    echoCode: json['echoCode'] as int,
  );
}

Map<String, dynamic> _$BaseResponseToJson<T>(BaseResponse<T> instance) =>
    <String, dynamic>{
      'code': instance.code,
      'echoCode': instance.echoCode,
      'total': instance.total,
      'totalPage': instance.totalPage,
      'data': instance.data,
      'msg': instance.msg,
      'success': instance.success,
      'echoMessage': instance.echoMessage,
    };
