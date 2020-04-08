import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()

class Product {

  String imgUrl_s;
  String address;
  String name;

  Product();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductToJson(this);
}