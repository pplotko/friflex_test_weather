import 'package:json_annotation/json_annotation.dart';

part 'temp.g.dart';

@JsonSerializable()

class Temp {
  double day;
  double min;
  double max;
  double night;
  double eve;
  double morn;

  Temp({
    required this.day,
    required this.min,
    required this.max,
    required this.night,
    required this.eve,
    required this.morn,
  });

  factory Temp.fromJson(Map<String,dynamic> json) => _$TempFromJson(json);

  Map<String,dynamic> toJson() => _$TempToJson(this);
}
