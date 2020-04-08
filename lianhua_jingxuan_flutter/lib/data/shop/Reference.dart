import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'Reference.g.dart';

@JsonSerializable()
class Reference {

  double distance;

  Reference();

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ReferenceToJson(this);
}
