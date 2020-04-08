import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/JXComponents.dart';

part 'ActiviteComponent.g.dart';

@JsonSerializable()
class ActiviteComponent {
  //组件名称
  String name;
  //投放门店id
  String id;
  //起始时间
  String type;

  JXComponents components;

  ActiviteComponent({
    this.name,
    this.id,
    this.type,
    this.components
  });

  factory ActiviteComponent.fromJson(Map<String, dynamic> json) => _$ActiviteComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiviteComponentToJson(this);

}