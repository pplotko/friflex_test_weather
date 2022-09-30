// import 'package:current_weather_data/services/current_weather/clouds.dart';
// import 'package:current_weather_data/services/current_weather/coord.dart';
// import 'package:current_weather_data/services/current_weather/main.dart';
// import 'package:current_weather_data/services/current_weather/sys.dart';
// import 'package:current_weather_data/services/current_weather/weather.dart';
// import 'package:current_weather_data/services/current_weather/wind.dart';
import 'package:json_annotation/json_annotation.dart';
import './clouds.dart';
import './coord.dart';
import './main.dart';
import './sys.dart';
import './weather.dart';
import './wind.dart';

part 'current_weather.g.dart';

@JsonSerializable()

class CurrentWeather {
    Coord coord;
    List<Weather> weather;
    String base;
    Main main;
    int visibility;
    Wind wind;
    Clouds clouds;
    int dt;
    Sys sys;
    int timezone;
    int id;
    String name;
    int cod;

    CurrentWeather({
        required this.coord,
        required this.weather,
        required this.base,
        required this.main,
        required this.visibility,
        required this.wind,
        required this.clouds,
        required this.dt,
        required this.sys ,
        required this.timezone,
        required this.id,
        required this.name,
        required this.cod,
    });

    factory CurrentWeather.fromJson(Map<String,dynamic> json) => _$CurrentWeatherFromJson(json);

    Map<String,dynamic> toJson() => _$CurrentWeatherToJson(this);
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