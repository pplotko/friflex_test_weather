// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minutely.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Minutely _$MinutelyFromJson(Map<String, dynamic> json) => Minutely(
      dt: (json['dt'] as num).toDouble(),
      precipitation: (json['precipitation'] as num).toDouble(),
    );

Map<String, dynamic> _$MinutelyToJson(Minutely instance) => <String, dynamic>{
      'dt': instance.dt,
      'precipitation': instance.precipitation,
    };
