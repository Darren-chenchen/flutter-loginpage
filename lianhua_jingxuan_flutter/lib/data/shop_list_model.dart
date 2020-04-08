import 'package:json_annotation/json_annotation.dart';

part 'shop_list_model.g.dart';

@JsonSerializable()
class ShopListModel {

  List<dynamic> oneHourShops;
  List<dynamic> selfTakeShops;

  ShopListModel();

  factory ShopListModel.fromJson(Map<String, dynamic> json) =>
      _$ShopListModelFromJson(json);

  static Map<String, dynamic> toJson(ShopListModel instance) =>
      _$ShopListModelToJson(instance);
}
