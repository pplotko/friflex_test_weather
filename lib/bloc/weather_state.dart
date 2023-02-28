import 'package:friflex_test_weather/service/onecall_weather/onecall_weather.dart';

import '../service/city_coordinates/city_coordinates.dart';

abstract class WeatherState {}

class WeatherEmptyState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final OneCallWeather loadedWeather;
  final String loadedPlace;
  final String cityState;
  final String cityCountry;

  WeatherLoadedState({
    required this.loadedWeather,
    required this.loadedPlace,
    required this.cityState,
    required this.cityCountry,

  });
}

class WeatherChoosingCityState extends WeatherState {
  final List<CityCoordinates> cityLocations;

  WeatherChoosingCityState({required this.cityLocations});
}

class WeatherErrorState extends WeatherState {}
