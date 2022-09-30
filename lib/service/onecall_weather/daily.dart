import 'package:json_annotation/json_annotation.dart';
import './feels_like.dart';
import './temp.dart';
import './weather.dart';

part 'daily.g.dart';

@JsonSerializable()

class Daily {
  double dt;
  double sunrise;
  double sunset;
  double moonrise;
  double moonset;
  double moon_phase;
  Temp temp;
  FeelsLike feels_like;
  double pressure;
  double humidity;
  double dew_point;
  double wind_speed;
  double wind_deg;
  double wind_gust;
  List<Weather> weather;

  Daily({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moon_phase,
    required this.temp,
    required this.feels_like,
    required this.pressure,
    required this.humidity,
    required this.dew_point,
    required this.wind_speed,
    required this.wind_deg,
    required this.wind_gust,
    required this.weather,
  });

  factory Daily.fromJson(Map<String,dynamic> json) => _$DailyFromJson(json);

  Map<String,dynamic> toJson() => _$DailyToJson(this);
}
