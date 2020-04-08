import 'package:json_annotation/json_annotation.dart';

part 'poiList.g.dart';

@JsonSerializable()

class PoiList {

  String city;
  String address;
  String name;

  PoiList();

  factory PoiList.fromJson(Map<String, dynamic> json) =>
      _$PoiListFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PoiListToJson(this);
}