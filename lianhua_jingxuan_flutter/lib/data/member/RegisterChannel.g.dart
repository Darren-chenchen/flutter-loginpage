// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterChannel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterChannel _$RegisterChannelFromJson(Map<String, dynamic> json) {
  return RegisterChannel(
    registerChannelCode: json['registerChannelCode'] as String,
    registerChannelName: json['registerChannelName'] as String,
  );
}

Map<String, dynamic> _$RegisterChannelToJson(RegisterChannel instance) =>
    <String, dynamic>{
      'registerChannelCode': instance.registerChannelCode,
      'registerChannelName': instance.registerChannelName,
    };
