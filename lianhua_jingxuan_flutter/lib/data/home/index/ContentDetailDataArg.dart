import 'package:json_annotation/json_annotation.dart';

part 'ContentDetailDataArg.g.dart';
@JsonSerializable()

class ContentDetailDataArg {
  String templateId;
  String categoryId;
  List<Map> shopSkus;



  ContentDetailDataArg({
    this.templateId,
    this.shopSkus,
    this.categoryId
  });

  factory ContentDetailDataArg.fromJson(Map<String, dynamic> json) => _$ContentDetailDataArgFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailDataArgToJson(this);
}