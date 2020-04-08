//library baseresponse;

import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable()
class BaseResponse<T> {
  int code;
  int echoCode;
  int total;
  int totalPage;
  dynamic data;
  String msg;
  bool success;
  String echoMessage;

  BaseResponse({this.code, this.total, this.totalPage, this.data, this.msg, this.success, this.echoMessage, this.echoCode});

  
  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}