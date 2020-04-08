// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterEmployee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterEmployee _$RegisterEmployeeFromJson(Map<String, dynamic> json) {
  return RegisterEmployee(
    registerEmployeeCode: json['registerEmployeeCode'] as String,
    registerEmployeeName: json['registerEmployeeName'] as String,
  );
}

Map<String, dynamic> _$RegisterEmployeeToJson(RegisterEmployee instance) =>
    <String, dynamic>{
      'registerEmployeeCode': instance.registerEmployeeCode,
      'registerEmployeeName': instance.registerEmployeeName,
    };
