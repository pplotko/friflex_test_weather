import 'package:json_annotation/json_annotation.dart';

part 'feels_like.g.dart';

@JsonSerializable()

class FeelsLike {
  double day;
  double night;
  double eve;
  double morn;

  FeelsLike({
    required this.day,
    required this.night,
    required this.eve,
    required this.morn,
  });

  factory FeelsLike.fromJson(Map<String,dynamic> json) => _$FeelsLikeFromJson(json);

  Map<String,dynamic> toJson() => _$FeelsLikeToJson(this);
}
