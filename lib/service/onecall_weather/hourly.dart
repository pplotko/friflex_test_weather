import 'package:json_annotation/json_annotation.dart';
import './weather.dart';

part 'hourly.g.dart';

@JsonSerializable()

class Hourly {
  double dt;
  double temp;
  double feels_like;
  double pressure;
  double humidity;
  double dew_point;
  double uvi;
  double clouds;
  double visibility;
  double wind_speed;
  double wind_deg;
  double wind_gust;
  List<Weather> weather;
  double pop;

  Hourly({
    required this.dt,
    required this.temp,
    required this.feels_like,
    required this.pressure,
    required this.humidity,
    required this.dew_point,
    required this.uvi,
    required this.clouds,
    required this.visibility,
    required this.wind_speed,
    required this.wind_deg,
    required this.wind_gust,
    required this.weather,
    required this.pop,
  });

  factory Hourly.fromJson(Map<String,dynamic> json) => _$HourlyFromJson(json);

  Map<String,dynamic> toJson() => _$HourlyToJson(this);
}
