class CityCoordinates {
  final double latitude;
  final double longitude;
  final String country;
  final String state;

  CityCoordinates({
    required this.latitude,
    required this.longitude,
    required this.country,
    required this.state,
  });
  // List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));
  factory CityCoordinates.fromJson(Map<String, dynamic> json)
  => CityCoordinates(
      latitude: json['lat'] as double,
      longitude: json['lon'] as double,
      country: json['country'] ?? '' as String,
      state: json['state'] ?? '' as String,
    );
}