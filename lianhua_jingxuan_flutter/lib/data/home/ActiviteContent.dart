import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/ActiviteCommonComponent.dart';

part 'ActiviteContent.g.dart';

@JsonSerializable()
class ActiviteContent {

  ActiviteCommonComponent component;

  ActiviteContent({
    this.component,
  });

  factory ActiviteContent.fromJson(Map<String, dynamic> json) => _$ActiviteContentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiviteContentToJson(this);

}