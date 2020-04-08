// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sort _$SortFromJson(Map<String, dynamic> json) {
  return Sort(
    desc: json['desc'] as bool,
    sortKey: json['sortKey'] as String,
  );
}

Map<String, dynamic> _$SortToJson(Sort instance) => <String, dynamic>{
      'desc': instance.desc,
      'sortKey': instance.sortKey,
    };
