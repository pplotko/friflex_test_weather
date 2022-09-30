import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@JsonSerializable()

class Main {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  double pressure;
  double humidity;

  Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
  });

  factory Main.fromJson(Map<String,dynamic> json) => _$MainFromJson(json);

  Map<String,dynamic> toJson() => _$MainToJson(this);
}