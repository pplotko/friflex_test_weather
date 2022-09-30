// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      dt: (json['dt'] as num).toDouble(),
      sunrise: (json['sunrise'] as num).toDouble(),
      sunset: (json['sunset'] as num).toDouble(),
      moonrise: (json['moonrise'] as num).toDouble(),
      moonset: (json['moonset'] as num).toDouble(),
      moon_phase: (json['moon_phase'] as num).toDouble(),
      temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
      feels_like:
          FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
      pressure: (json['pressure'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      dew_point: (json['dew_point'] as num).toDouble(),
      wind_speed: (json['wind_speed'] as num).toDouble(),
      wind_deg: (json['wind_deg'] as num).toDouble(),
      wind_gust: (json['wind_gust'] as num).toDouble(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moon_phase,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dew_point,
      'wind_speed': instance.wind_speed,
      'wind_deg': instance.wind_deg,
      'wind_gust': instance.wind_gust,
      'weather': instance.weather,
    };
