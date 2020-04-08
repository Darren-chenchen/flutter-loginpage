// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopListModel _$ShopListModelFromJson(Map<String, dynamic> json) {
  return ShopListModel()
    ..oneHourShops = json['oneHourShops'] as List
    ..selfTakeShops = json['selfTakeShops'] as List;
}

Map<String, dynamic> _$ShopListModelToJson(ShopListModel instance) =>
    <String, dynamic>{
      'oneHourShops': instance.oneHourShops,
      'selfTakeShops': instance.selfTakeShops,
    };
