import 'package:json_annotation/json_annotation.dart';
import './weather.dart';


part 'current.g.dart';

@JsonSerializable()

class Current {
    double dt;
    double sunrise;
    double sunset;
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

    Current({
        required this.dt,
        required this.sunrise,
        required this.sunset,
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
    });

    factory Current.fromJson(Map<String,dynamic> json) => _$CurrentFromJson(json);

    Map<String,dynamic> toJson() => _$CurrentToJson(this);
}


// const jsonStringCurrentWeather =
//     '''{
//       "coord": {
//         "lon": -122.08,
//         "lat": 37.39
//         },
//       "weather": [
//         {
//           "id": 800,
//           "main": "Clear",
//           "description": "clear sky",
//           "icon": "01d"
//         }
//       ],
//       "base": "stations",
//       "main": {
//         "temp": 282.55,
//         "feels_like": 281.86,
//         "temp_min": 280.37,
//         "temp_max": 284.26,
//         "pressure": 1023,
//         "humidity": 100
//        },
//       "visibility": 16093,
//       "wind": {
//         "speed": 1.5,
//         "deg": 350
//       },
//       "clouds": {
//         "all": 1
//       },
//       "dt": 1560350645,
//       "sys": {
//         "type": 1,
//         "id": 5122,
//         "message": 0.0139,
//         "country": "US",
//         "sunrise": 1560343627,
//         "sunset": 1560396563
//       },
//       "timezone": -25200,
//       "id": 420006353,
//       "name": "Mountain View_1",
//       "cod": 200
//     }''';