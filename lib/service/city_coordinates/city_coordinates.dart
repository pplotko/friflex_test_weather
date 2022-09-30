class CityCoordinates {
  double latitude;
  double longitude;

  CityCoordinates({
    required this.latitude,
    required this.longitude,
  });
  // List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));
  factory CityCoordinates.fromJson(Map<String, dynamic> json)
  => CityCoordinates(
      latitude: json['lat'] as double,
      longitude: json['lon'] as double,
    );
}