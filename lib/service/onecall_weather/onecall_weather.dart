import 'package:json_annotation/json_annotation.dart';
import './current.dart';
import './daily.dart';
import './hourly.dart';
import './minutely.dart';

part 'onecall_weather.g.dart';

@JsonSerializable()

class OneCallWeather {
  double lat;
  double lon;
  String timezone;
  double timezone_offset;
  Current current;
  List<Minutely> minutely;
  List<Hourly> hourly;
  List<Daily> daily;

  OneCallWeather({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezone_offset,
    required this.current,
    required this.minutely,
    required this.hourly,
    required this.daily,
  });

  factory OneCallWeather.fromJson(Map<String,dynamic> json) => _$OneCallWeatherFromJson(json);

  Map<String,dynamic> toJson() => _$OneCallWeatherToJson(this);
}

const jsonStringCurrentWeather ='''{
"lat": 53.5,
"lon": 27.34,
"timezone": "Europe/Minsk",
"timezone_offset": 10800,
"current": {
"dt": 1646817807,
"sunrise": 1646800824,
"sunset": 1646841739,
"temp": 270.18,
"feels_like": 265.25,
"pressure": 1025,
"humidity": 53,
"dew_point": 262.85,
"uvi": 1.6,
"clouds": 24,
"visibility": 10000,
"wind_speed": 3.96,
"wind_deg": 55,
"wind_gust": 4.77,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02d"
}
]
},
"minutely": [
{
"dt": 1646817840,
"precipitation": 0
},
{
"dt": 1646817900,
"precipitation": 0
},
{
"dt": 1646817960,
"precipitation": 0
},
{
"dt": 1646818020,
"precipitation": 0
},
{
"dt": 1646818080,
"precipitation": 0
},
{
"dt": 1646818140,
"precipitation": 0
},
{
"dt": 1646818200,
"precipitation": 0
},
{
"dt": 1646818260,
"precipitation": 0
},
{
"dt": 1646818320,
"precipitation": 0
},
{
"dt": 1646818380,
"precipitation": 0
},
{
"dt": 1646818440,
"precipitation": 0
},
{
"dt": 1646818500,
"precipitation": 0
},
{
"dt": 1646818560,
"precipitation": 0
},
{
"dt": 1646818620,
"precipitation": 0
},
{
"dt": 1646818680,
"precipitation": 0
},
{
"dt": 1646818740,
"precipitation": 0
},
{
"dt": 1646818800,
"precipitation": 0
},
{
"dt": 1646818860,
"precipitation": 0
},
{
"dt": 1646818920,
"precipitation": 0
},
{
"dt": 1646818980,
"precipitation": 0
},
{
"dt": 1646819040,
"precipitation": 0
},
{
"dt": 1646819100,
"precipitation": 0
},
{
"dt": 1646819160,
"precipitation": 0
},
{
"dt": 1646819220,
"precipitation": 0
},
{
"dt": 1646819280,
"precipitation": 0
},
{
"dt": 1646819340,
"precipitation": 0
},
{
"dt": 1646819400,
"precipitation": 0
},
{
"dt": 1646819460,
"precipitation": 0
},
{
"dt": 1646819520,
"precipitation": 0
},
{
"dt": 1646819580,
"precipitation": 0
},
{
"dt": 1646819640,
"precipitation": 0
},
{
"dt": 1646819700,
"precipitation": 0
},
{
"dt": 1646819760,
"precipitation": 0
},
{
"dt": 1646819820,
"precipitation": 0
},
{
"dt": 1646819880,
"precipitation": 0
},
{
"dt": 1646819940,
"precipitation": 0
},
{
"dt": 1646820000,
"precipitation": 0
},
{
"dt": 1646820060,
"precipitation": 0
},
{
"dt": 1646820120,
"precipitation": 0
},
{
"dt": 1646820180,
"precipitation": 0
},
{
"dt": 1646820240,
"precipitation": 0
},
{
"dt": 1646820300,
"precipitation": 0
},
{
"dt": 1646820360,
"precipitation": 0
},
{
"dt": 1646820420,
"precipitation": 0
},
{
"dt": 1646820480,
"precipitation": 0
},
{
"dt": 1646820540,
"precipitation": 0
},
{
"dt": 1646820600,
"precipitation": 0
},
{
"dt": 1646820660,
"precipitation": 0
},
{
"dt": 1646820720,
"precipitation": 0
},
{
"dt": 1646820780,
"precipitation": 0
},
{
"dt": 1646820840,
"precipitation": 0
},
{
"dt": 1646820900,
"precipitation": 0
},
{
"dt": 1646820960,
"precipitation": 0
},
{
"dt": 1646821020,
"precipitation": 0
},
{
"dt": 1646821080,
"precipitation": 0
},
{
"dt": 1646821140,
"precipitation": 0
},
{
"dt": 1646821200,
"precipitation": 0
},
{
"dt": 1646821260,
"precipitation": 0
},
{
"dt": 1646821320,
"precipitation": 0
},
{
"dt": 1646821380,
"precipitation": 0
},
{
"dt": 1646821440,
"precipitation": 0
}
],
"hourly": [
{
"dt": 1646816400,
"temp": 270.18,
"feels_like": 265.25,
"pressure": 1025,
"humidity": 53,
"dew_point": 262.85,
"uvi": 1.6,
"clouds": 24,
"visibility": 10000,
"wind_speed": 3.96,
"wind_deg": 55,
"wind_gust": 4.77,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02d"
}
],
"pop": 0
},
{
"dt": 1646820000,
"temp": 270.32,
"feels_like": 265.16,
"pressure": 1025,
"humidity": 52,
"dew_point": 262.76,
"uvi": 1.81,
"clouds": 26,
"visibility": 10000,
"wind_speed": 4.31,
"wind_deg": 52,
"wind_gust": 5.18,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646823600,
"temp": 270.58,
"feels_like": 265.19,
"pressure": 1025,
"humidity": 50,
"dew_point": 262.57,
"uvi": 1.71,
"clouds": 30,
"visibility": 10000,
"wind_speed": 4.74,
"wind_deg": 48,
"wind_gust": 5.68,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646827200,
"temp": 270.95,
"feels_like": 265.43,
"pressure": 1025,
"humidity": 48,
"dew_point": 262.46,
"uvi": 1.34,
"clouds": 32,
"visibility": 10000,
"wind_speed": 5.09,
"wind_deg": 45,
"wind_gust": 6.12,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646830800,
"temp": 271.07,
"feels_like": 265.29,
"pressure": 1026,
"humidity": 46,
"dew_point": 262.1,
"uvi": 0.83,
"clouds": 12,
"visibility": 10000,
"wind_speed": 5.58,
"wind_deg": 45,
"wind_gust": 6.75,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02d"
}
],
"pop": 0
},
{
"dt": 1646834400,
"temp": 270.95,
"feels_like": 264.94,
"pressure": 1026,
"humidity": 46,
"dew_point": 260.81,
"uvi": 0.39,
"clouds": 32,
"visibility": 10000,
"wind_speed": 5.93,
"wind_deg": 46,
"wind_gust": 7.2,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646838000,
"temp": 270.26,
"feels_like": 264.21,
"pressure": 1027,
"humidity": 49,
"dew_point": 261.17,
"uvi": 0.12,
"clouds": 33,
"visibility": 10000,
"wind_speed": 5.68,
"wind_deg": 46,
"wind_gust": 7.57,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646841600,
"temp": 269.16,
"feels_like": 262.81,
"pressure": 1028,
"humidity": 55,
"dew_point": 261.33,
"uvi": 0,
"clouds": 30,
"visibility": 10000,
"wind_speed": 5.69,
"wind_deg": 43,
"wind_gust": 7.91,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646845200,
"temp": 268.59,
"feels_like": 261.97,
"pressure": 1029,
"humidity": 59,
"dew_point": 261.75,
"uvi": 0,
"clouds": 29,
"visibility": 10000,
"wind_speed": 5.9,
"wind_deg": 46,
"wind_gust": 8.07,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"pop": 0
},
{
"dt": 1646848800,
"temp": 268.25,
"feels_like": 261.74,
"pressure": 1030,
"humidity": 62,
"dew_point": 261.95,
"uvi": 0,
"clouds": 29,
"visibility": 10000,
"wind_speed": 5.56,
"wind_deg": 53,
"wind_gust": 8.25,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"pop": 0
},
{
"dt": 1646852400,
"temp": 268.09,
"feels_like": 261.67,
"pressure": 1030,
"humidity": 63,
"dew_point": 261.91,
"uvi": 0,
"clouds": 7,
"visibility": 10000,
"wind_speed": 5.35,
"wind_deg": 54,
"wind_gust": 8.64,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646856000,
"temp": 267.91,
"feels_like": 261.44,
"pressure": 1031,
"humidity": 63,
"dew_point": 261.73,
"uvi": 0,
"clouds": 7,
"visibility": 10000,
"wind_speed": 5.36,
"wind_deg": 56,
"wind_gust": 8.74,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646859600,
"temp": 267.56,
"feels_like": 261.13,
"pressure": 1032,
"humidity": 65,
"dew_point": 261.98,
"uvi": 0,
"clouds": 13,
"visibility": 10000,
"wind_speed": 5.16,
"wind_deg": 60,
"wind_gust": 8.7,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"pop": 0
},
{
"dt": 1646863200,
"temp": 267.24,
"feels_like": 260.88,
"pressure": 1032,
"humidity": 66,
"dew_point": 261.71,
"uvi": 0,
"clouds": 22,
"visibility": 10000,
"wind_speed": 4.94,
"wind_deg": 61,
"wind_gust": 8.64,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"pop": 0
},
{
"dt": 1646866800,
"temp": 266.93,
"feels_like": 260.5,
"pressure": 1033,
"humidity": 63,
"dew_point": 260.79,
"uvi": 0,
"clouds": 19,
"visibility": 10000,
"wind_speed": 4.93,
"wind_deg": 57,
"wind_gust": 8.61,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"pop": 0
},
{
"dt": 1646870400,
"temp": 266.52,
"feels_like": 260.01,
"pressure": 1034,
"humidity": 62,
"dew_point": 260.29,
"uvi": 0,
"clouds": 17,
"visibility": 10000,
"wind_speed": 4.9,
"wind_deg": 54,
"wind_gust": 8.47,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"pop": 0
},
{
"dt": 1646874000,
"temp": 266.02,
"feels_like": 259.41,
"pressure": 1034,
"humidity": 64,
"dew_point": 260.2,
"uvi": 0,
"clouds": 6,
"visibility": 10000,
"wind_speed": 4.87,
"wind_deg": 48,
"wind_gust": 8.3,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646877600,
"temp": 265.6,
"feels_like": 258.92,
"pressure": 1035,
"humidity": 67,
"dew_point": 260.25,
"uvi": 0,
"clouds": 6,
"visibility": 10000,
"wind_speed": 4.83,
"wind_deg": 48,
"wind_gust": 8.54,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646881200,
"temp": 265.19,
"feels_like": 258.38,
"pressure": 1036,
"humidity": 69,
"dew_point": 260.25,
"uvi": 0,
"clouds": 6,
"visibility": 10000,
"wind_speed": 4.87,
"wind_deg": 47,
"wind_gust": 8.9,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646884800,
"temp": 264.86,
"feels_like": 258.06,
"pressure": 1036,
"humidity": 71,
"dew_point": 260.15,
"uvi": 0,
"clouds": 7,
"visibility": 10000,
"wind_speed": 4.75,
"wind_deg": 49,
"wind_gust": 9.13,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646888400,
"temp": 264.54,
"feels_like": 257.66,
"pressure": 1037,
"humidity": 71,
"dew_point": 259.87,
"uvi": 0,
"clouds": 7,
"visibility": 10000,
"wind_speed": 4.75,
"wind_deg": 48,
"wind_gust": 9.42,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646892000,
"temp": 264.82,
"feels_like": 257.82,
"pressure": 1038,
"humidity": 67,
"dew_point": 259.38,
"uvi": 0.28,
"clouds": 6,
"visibility": 10000,
"wind_speed": 5.3,
"wind_deg": 52,
"wind_gust": 9.32,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646895600,
"temp": 265.57,
"feels_like": 258.57,
"pressure": 1039,
"humidity": 59,
"dew_point": 258.69,
"uvi": 0.65,
"clouds": 6,
"visibility": 10000,
"wind_speed": 5.49,
"wind_deg": 53,
"wind_gust": 8.43,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646899200,
"temp": 266.42,
"feels_like": 259.42,
"pressure": 1039,
"humidity": 51,
"dew_point": 257.85,
"uvi": 1.15,
"clouds": 6,
"visibility": 10000,
"wind_speed": 5.62,
"wind_deg": 54,
"wind_gust": 8.1,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646902800,
"temp": 267.33,
"feels_like": 260.53,
"pressure": 1039,
"humidity": 44,
"dew_point": 256.94,
"uvi": 1.58,
"clouds": 6,
"visibility": 10000,
"wind_speed": 5.64,
"wind_deg": 57,
"wind_gust": 7.84,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646906400,
"temp": 268.27,
"feels_like": 261.8,
"pressure": 1039,
"humidity": 38,
"dew_point": 256.07,
"uvi": 1.76,
"clouds": 4,
"visibility": 10000,
"wind_speed": 5.51,
"wind_deg": 56,
"wind_gust": 7.4,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646910000,
"temp": 269,
"feels_like": 262.74,
"pressure": 1038,
"humidity": 34,
"dew_point": 255.48,
"uvi": 1.67,
"clouds": 3,
"visibility": 10000,
"wind_speed": 5.48,
"wind_deg": 52,
"wind_gust": 7.24,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646913600,
"temp": 269.63,
"feels_like": 263.55,
"pressure": 1038,
"humidity": 32,
"dew_point": 255.37,
"uvi": 1.31,
"clouds": 3,
"visibility": 10000,
"wind_speed": 5.45,
"wind_deg": 49,
"wind_gust": 7.14,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646917200,
"temp": 269.81,
"feels_like": 263.68,
"pressure": 1038,
"humidity": 33,
"dew_point": 255.63,
"uvi": 0.82,
"clouds": 0,
"visibility": 10000,
"wind_speed": 5.62,
"wind_deg": 47,
"wind_gust": 7.32,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646920800,
"temp": 269.74,
"feels_like": 263.59,
"pressure": 1038,
"humidity": 34,
"dew_point": 256.28,
"uvi": 0.39,
"clouds": 0,
"visibility": 10000,
"wind_speed": 5.61,
"wind_deg": 45,
"wind_gust": 7.33,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646924400,
"temp": 269.19,
"feels_like": 263.06,
"pressure": 1039,
"humidity": 39,
"dew_point": 257.2,
"uvi": 0.12,
"clouds": 0,
"visibility": 10000,
"wind_speed": 5.35,
"wind_deg": 46,
"wind_gust": 7.54,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646928000,
"temp": 268.42,
"feels_like": 262.6,
"pressure": 1039,
"humidity": 45,
"dew_point": 258.34,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 4.59,
"wind_deg": 46,
"wind_gust": 7.85,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"pop": 0
},
{
"dt": 1646931600,
"temp": 267.97,
"feels_like": 262.12,
"pressure": 1039,
"humidity": 51,
"dew_point": 259.31,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 4.49,
"wind_deg": 48,
"wind_gust": 8.48,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646935200,
"temp": 267.52,
"feels_like": 261.82,
"pressure": 1039,
"humidity": 56,
"dew_point": 260.02,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 4.16,
"wind_deg": 51,
"wind_gust": 8.73,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646938800,
"temp": 267.22,
"feels_like": 261.5,
"pressure": 1040,
"humidity": 59,
"dew_point": 260.4,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 4.1,
"wind_deg": 49,
"wind_gust": 9.1,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646942400,
"temp": 267.05,
"feels_like": 261.63,
"pressure": 1040,
"humidity": 61,
"dew_point": 260.63,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 3.71,
"wind_deg": 52,
"wind_gust": 8.97,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646946000,
"temp": 266.98,
"feels_like": 261.78,
"pressure": 1040,
"humidity": 62,
"dew_point": 260.61,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 3.45,
"wind_deg": 48,
"wind_gust": 8.84,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646949600,
"temp": 266.93,
"feels_like": 261.85,
"pressure": 1040,
"humidity": 61,
"dew_point": 260.54,
"uvi": 0,
"clouds": 0,
"visibility": 10000,
"wind_speed": 3.32,
"wind_deg": 44,
"wind_gust": 8.67,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646953200,
"temp": 266.83,
"feels_like": 261.91,
"pressure": 1040,
"humidity": 62,
"dew_point": 260.45,
"uvi": 0,
"clouds": 2,
"visibility": 10000,
"wind_speed": 3.14,
"wind_deg": 41,
"wind_gust": 8.02,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646956800,
"temp": 266.68,
"feels_like": 261.92,
"pressure": 1039,
"humidity": 63,
"dew_point": 260.52,
"uvi": 0,
"clouds": 3,
"visibility": 10000,
"wind_speed": 2.96,
"wind_deg": 40,
"wind_gust": 7.67,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01n"
}
],
"pop": 0
},
{
"dt": 1646960400,
"temp": 266.5,
"feels_like": 261.97,
"pressure": 1039,
"humidity": 64,
"dew_point": 260.67,
"uvi": 0,
"clouds": 12,
"visibility": 10000,
"wind_speed": 2.73,
"wind_deg": 37,
"wind_gust": 6.99,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"pop": 0
},
{
"dt": 1646964000,
"temp": 266.34,
"feels_like": 262.05,
"pressure": 1039,
"humidity": 65,
"dew_point": 260.72,
"uvi": 0,
"clouds": 22,
"visibility": 10000,
"wind_speed": 2.51,
"wind_deg": 36,
"wind_gust": 6.38,
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"pop": 0
},
{
"dt": 1646967600,
"temp": 266.18,
"feels_like": 261.83,
"pressure": 1039,
"humidity": 67,
"dew_point": 260.82,
"uvi": 0,
"clouds": 25,
"visibility": 10000,
"wind_speed": 2.53,
"wind_deg": 30,
"wind_gust": 6.15,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"pop": 0
},
{
"dt": 1646971200,
"temp": 266.1,
"feels_like": 261.76,
"pressure": 1039,
"humidity": 68,
"dew_point": 260.87,
"uvi": 0,
"clouds": 32,
"visibility": 10000,
"wind_speed": 2.51,
"wind_deg": 28,
"wind_gust": 5.98,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"pop": 0
},
{
"dt": 1646974800,
"temp": 266.14,
"feels_like": 261.7,
"pressure": 1039,
"humidity": 68,
"dew_point": 260.99,
"uvi": 0,
"clouds": 39,
"visibility": 10000,
"wind_speed": 2.6,
"wind_deg": 23,
"wind_gust": 6.22,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646978400,
"temp": 266.97,
"feels_like": 262.2,
"pressure": 1039,
"humidity": 64,
"dew_point": 261.01,
"uvi": 0.28,
"clouds": 38,
"visibility": 10000,
"wind_speed": 3.02,
"wind_deg": 31,
"wind_gust": 6.05,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646982000,
"temp": 268.27,
"feels_like": 263.46,
"pressure": 1039,
"humidity": 58,
"dew_point": 261.11,
"uvi": 0.64,
"clouds": 35,
"visibility": 10000,
"wind_speed": 3.33,
"wind_deg": 35,
"wind_gust": 5.51,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"pop": 0
},
{
"dt": 1646985600,
"temp": 269.55,
"feels_like": 265.18,
"pressure": 1039,
"humidity": 53,
"dew_point": 261.27,
"uvi": 1.12,
"clouds": 51,
"visibility": 10000,
"wind_speed": 3.15,
"wind_deg": 35,
"wind_gust": 4.76,
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"pop": 0
}
],
"daily": [
{
"dt": 1646820000,
"sunrise": 1646800824,
"sunset": 1646841739,
"moonrise": 1646809500,
"moonset": 1646781000,
"moon_phase": 0.22,
"temp": {
"day": 270.32,
"min": 267.42,
"max": 271.07,
"night": 267.91,
"eve": 269.16,
"morn": 267.42
},
"feels_like": {
"day": 265.16,
"night": 261.44,
"eve": 262.81,
"morn": 264.32
},
"pressure": 1025,
"humidity": 52,
"dew_point": 262.76,
"wind_speed": 5.93,
"wind_deg": 46,
"wind_gust": 8.74,
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"clouds": 26,
"pop": 0,
"uvi": 1.81
},
{
"dt": 1646906400,
"sunrise": 1646887080,
"sunset": 1646928251,
"moonrise": 1646897520,
"moonset": 1646871720,
"moon_phase": 0.25,
"temp": {
"day": 268.27,
"min": 264.54,
"max": 269.81,
"night": 267.05,
"eve": 268.42,
"morn": 264.86
},
"feels_like": {
"day": 261.8,
"night": 261.63,
"eve": 262.6,
"morn": 258.06
},
"pressure": 1039,
"humidity": 38,
"dew_point": 256.07,
"wind_speed": 5.64,
"wind_deg": 57,
"wind_gust": 9.42,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"clouds": 4,
"pop": 0,
"uvi": 1.76
},
{
"dt": 1646992800,
"sunrise": 1646973336,
"sunset": 1647014762,
"moonrise": 1646986140,
"moonset": 1646962020,
"moon_phase": 0.28,
"temp": {
"day": 271.88,
"min": 266.1,
"max": 273.46,
"night": 270.56,
"eve": 270.85,
"morn": 266.1
},
"feels_like": {
"day": 268.1,
"night": 267.28,
"eve": 267.19,
"morn": 261.76
},
"pressure": 1038,
"humidity": 45,
"dew_point": 261.59,
"wind_speed": 3.54,
"wind_deg": 355,
"wind_gust": 8.84,
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"clouds": 59,
"pop": 0,
"uvi": 1.75
},
{
"dt": 1647079200,
"sunrise": 1647059592,
"sunset": 1647101274,
"moonrise": 1647075480,
"moonset": 1647051840,
"moon_phase": 0.31,
"temp": {
"day": 273.65,
"min": 269.78,
"max": 275.59,
"night": 272.03,
"eve": 274.39,
"morn": 269.78
},
"feels_like": {
"day": 269.59,
"night": 268.29,
"eve": 270.81,
"morn": 266.24
},
"pressure": 1033,
"humidity": 43,
"dew_point": 262.49,
"wind_speed": 4.52,
"wind_deg": 324,
"wind_gust": 7.69,
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04d"
}
],
"clouds": 100,
"pop": 0,
"uvi": 1.6
},
{
"dt": 1647165600,
"sunrise": 1647145847,
"sunset": 1647187785,
"moonrise": 1647165600,
"moonset": 1647140820,
"moon_phase": 0.34,
"temp": {
"day": 274.83,
"min": 271.32,
"max": 275.19,
"night": 271.6,
"eve": 274.46,
"morn": 271.54
},
"feels_like": {
"day": 271.14,
"night": 268.41,
"eve": 271.38,
"morn": 268.9
},
"pressure": 1032,
"humidity": 70,
"dew_point": 270.06,
"wind_speed": 3.69,
"wind_deg": 69,
"wind_gust": 6.72,
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"clouds": 83,
"pop": 0,
"uvi": 2.02
},
{
"dt": 1647252000,
"sunrise": 1647232101,
"sunset": 1647274296,
"moonrise": 1647256260,
"moonset": 1647229200,
"moon_phase": 0.37,
"temp": {
"day": 275.2,
"min": 270.99,
"max": 277.02,
"night": 272.53,
"eve": 275.61,
"morn": 270.99
},
"feels_like": {
"day": 275.2,
"night": 269.9,
"eve": 273.27,
"morn": 270.99
},
"pressure": 1040,
"humidity": 60,
"dew_point": 268.4,
"wind_speed": 2.27,
"wind_deg": 340,
"wind_gust": 3.35,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"clouds": 7,
"pop": 0,
"uvi": 3
},
{
"dt": 1647338400,
"sunrise": 1647318356,
"sunset": 1647360807,
"moonrise": 1647347280,
"moonset": 1647317040,
"moon_phase": 0.4,
"temp": {
"day": 278.02,
"min": 271.97,
"max": 279.91,
"night": 274.42,
"eve": 278.2,
"morn": 271.97
},
"feels_like": {
"day": 275.82,
"night": 271.66,
"eve": 276.54,
"morn": 269.11
},
"pressure": 1042,
"humidity": 56,
"dew_point": 269.94,
"wind_speed": 2.87,
"wind_deg": 298,
"wind_gust": 3.78,
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"clouds": 0,
"pop": 0,
"uvi": 3
},
{
"dt": 1647424800,
"sunrise": 1647404610,
"sunset": 1647447317,
"moonrise": 1647438480,
"moonset": 1647404520,
"moon_phase": 0.43,
"temp": {
"day": 276.7,
"min": 272.52,
"max": 279.45,
"night": 274.31,
"eve": 278.14,
"morn": 272.52
},
"feels_like": {
"day": 274.07,
"night": 270.81,
"eve": 275.44,
"morn": 269.31
},
"pressure": 1030,
"humidity": 65,
"dew_point": 270.87,
"wind_speed": 3.62,
"wind_deg": 341,
"wind_gust": 8.71,
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04d"
}
],
"clouds": 100,
"pop": 0,
"uvi": 3
}
]
}''';