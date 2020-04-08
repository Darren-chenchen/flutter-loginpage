import 'package:json_annotation/json_annotation.dart';
import './Shop.dart';

part 'DeliveryTypeShops.g.dart';

@JsonSerializable()
class DeliveryTypeShops {
	List<Shop> oneHourShops;
	List<Shop> selfTakeShops;

	DeliveryTypeShops();

	factory DeliveryTypeShops.fromJson(Map<String, dynamic> json) => _$DeliveryTypeShopsFromJson(json);

	Map<String, dynamic> toJson() => _$DeliveryTypeShopsToJson(this);

}