import 'package:json_annotation/json_annotation.dart';

import './ContentDetailDataArg.dart';

part 'ContentDetailData.g.dart';

@JsonSerializable()
class ContentDetailData {
  String tenant;
  String id;
  String name;
  String image;
  String placeId;
  int placeNo;
  bool countDown;
  String end;
  String targetPage;
  String stayTime;
  String remark;
  bool enabled;
  ContentDetailDataArg content;



  ContentDetailData({
    this.tenant,
    this.id,
    this.name,
    this.image,
    this.placeId,
    this.placeNo,
    this.countDown,
    this.end,
    this.targetPage,
    this.stayTime,
    this.remark,
    this.enabled,
    this.content
  });

  factory ContentDetailData.fromJson(Map<String, dynamic> json) => _$ContentDetailDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailDataToJson(this);
}