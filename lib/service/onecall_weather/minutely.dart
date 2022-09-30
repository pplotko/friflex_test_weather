import 'package:json_annotation/json_annotation.dart';

part 'minutely.g.dart';

@JsonSerializable()

class Minutely {
  double dt;
  double precipitation;

  Minutely({
    required this.dt,
    required this.precipitation,
  });

  factory Minutely.fromJson(Map<String,dynamic> json) => _$MinutelyFromJson(json);

  Map<String,dynamic> toJson() => _$MinutelyToJson(this);
}
