// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      type: json['type']  ?? 0 as int,
      id: json['id']  ?? 0 as int,
      message: (json['message'] ?? 0.0 as num ).toDouble(),
      country: json['country'] as String,
      sunrise: json['sunrise']  ?? 0 as int ,
      sunset: json['sunset']  ?? 0 as int ,
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'message': instance.message,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
