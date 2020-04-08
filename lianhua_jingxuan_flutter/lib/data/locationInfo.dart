import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/poiList.dart';

part 'locationInfo.g.dart';

@JsonSerializable()
class LocationInfo {

  String latitude;
  String longitude;
  String describe;
  String requestId;
  String city;
  String district;
  String town;
  String street;
  String cityCode;

  List<PoiList> poiList;

  LocationInfo();

  factory LocationInfo.fromJson(Map<String, dynamic> json) =>
      _$LocationInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LocationInfoToJson(this);
}

//"latitude": lat,
//"longitude": long,
//"describe": describe,
//"poiList": poiList,
//"requestId": self.requestLocationId,
//"city": city])
//    district = now_location.rgcData?.district ?? ""
//    town = now_location.rgcData?.town ?? ""
//    street = now_location.rgcData?.street ?? ""
//    cityCode = no
