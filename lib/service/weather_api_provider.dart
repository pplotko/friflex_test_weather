import 'package:location/location.dart';
import './api_client/api_client.dart';
import './current_weather/current_weather.dart';
import './location_checked.dart';
import './onecall_weather/onecall_weather.dart';
import 'city_coordinates/city_coordinates.dart';

class WeatherProvider {

  Future <LocationData> getLocation() async {
    LocationData location;
    double la;
    try {
      location = await LocationChecked().getLocation();
      print('location: $location');
      la = location.latitude!;
      print('location.latitude: $la');
      return location;
    }
    catch (error) {
      print('$error(ошибка получения локации) ${StackTrace.current}');
      return Future.error(error, StackTrace.current);
    }
  }

  Future <OneCallWeather> fetchWeather(CityCoordinates location) async {
    const String apiKey = '497d04b78cfab23e1679b18e620dd709';
    // LocationData location = await getLocation();
    try {
      var apiClient = ApiClient(apiKey);
      Map<String, dynamic> onecallWeather = await apiClient.onecallWeatherByLocation(
          // 37.4219983,-122.084,
        location.latitude,
        location.longitude,
      ).timeout(const Duration(seconds: 10));
      final weather = OneCallWeather.fromJson(onecallWeather);
      print('weather ${weather.timezone}');
      return weather;
    } catch (error) {
      print('$error (ошибка получения данных погоды) ${StackTrace.current}');
      return Future.error(error, StackTrace.current);
    }
  }

  Future <String> fetchPlace () async {
    const String apiKey = '497d04b78cfab23e1679b18e620dd709';
    LocationData location = await getLocation();
    print('location.latitude = ${location}');
    try {
      var apiClient = ApiClient(apiKey);
      Map<String, dynamic> curentWeather = await apiClient.currentWeatherByLocation(
        // 37.4219983,-122.084,
        location.latitude!,
        location.longitude!,
      ).timeout(const Duration(seconds: 10));
      final currentWeather = CurrentWeather.fromJson(curentWeather);
      print('place ${currentWeather.name}');
      return currentWeather.name;
    } catch (error) {
      print('$error (ошибка получения данных погоды) ${StackTrace.current}');
      return Future.error(error, StackTrace.current);
    }
  }

  Future <CityCoordinates> fetchLocation(String cityName) async {
    const String apiKey = '497d04b78cfab23e1679b18e620dd709';
    CityCoordinates location;
    try {
      var apiClient = ApiClient(apiKey);
      Map <String, dynamic>?  location = await apiClient.currentLocation(cityName);
      print('location: $location');
      final city_coordinates = CityCoordinates.fromJson(location!);

      print('city.latitude: ${city_coordinates.latitude}');
      print('city.longitude: ${city_coordinates.longitude}');
      return city_coordinates;
    }
    catch (error) {
      print('$error(Ошибка получения координат города) ${StackTrace.current}');
      return Future.error(error, StackTrace.current);
    }
  }
}