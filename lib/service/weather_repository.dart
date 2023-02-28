import 'package:friflex_test_weather/service/city_coordinates/city_coordinates.dart';
import 'package:location/location.dart';

import './weather_api_provider.dart';

class WeathersRepository {
  final WeatherProvider _weathersProvider = WeatherProvider();

  Future getAllWeathers(CityCoordinates cityLocation) => _weathersProvider.fetchWeather(cityLocation);

  Future<String> getPlace() => _weathersProvider.fetchPlace();

  Future <List<CityCoordinates>> getLocation(cityName) => _weathersProvider.fetchLocation(cityName);
}
