import 'package:json_annotation/json_annotation.dart';

import './ContentDetailData.dart';

part 'ContentData.g.dart';

@JsonSerializable()
class ContentData {
  List<ContentDetailData> shouyedingbu;
  List<ContentDetailData> jingxuanhuodong;
  List<ContentDetailData> jingxuandapai;
  List<ContentDetailData> jingjingledao;
  List<ContentDetailData> shouyebanner;
  List<ContentDetailData> shouyeleimu;
  List<ContentDetailData> jingxintuijian;


  ContentData({
    this.shouyedingbu,
    this.jingxuanhuodong,
    this.jingxuandapai,
    this.jingjingledao,
    this.shouyebanner,
    this.shouyeleimu,
    this.jingxintuijian
  });

  factory ContentData.fromJson(Map<String, dynamic> json) => _$ContentDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDataToJson(this);

}