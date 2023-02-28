import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

import '../city_coordinates/city_coordinates.dart';

// import './service/current_weather/current_weather.dart';

class ApiClient {
  final String _apiKey;

  // late Language language;
  static const String FIVE_DAY_FORECAST = 'forecast';
  static const String CURRENT_WEATHER = 'weather';
  static const String ONE_CALL_WEATHER = 'onecall';
  static const int STATUS_OK = 200;

  ApiClient(this._apiKey) {
    // var _httpClient = http.Client();
  }

  Future<Map<String, dynamic>> onecallWeatherByLocation(
      double latitude, double longitude) async {
    Map<String, dynamic>? jsonResponse =
        await _sendRequest(ONE_CALL_WEATHER, lat: latitude, lon: longitude);
    return jsonResponse!;
  }

  Future<Map<String, dynamic>> currentWeatherByLocation(
      double latitude, double longitude) async {
    Map<String, dynamic>? jsonResponse =
        await _sendRequest(CURRENT_WEATHER, lat: latitude, lon: longitude);
    return jsonResponse!;
  }

  Future <List<dynamic>> /*<Map<String, dynamic>?>*/ currentLocation(String cityName) async {
    /// Example of API call: http://api.openweathermap.org/geo/1.0/direct?q=London&limit=5&appid={API key}
    String url = 'http://api.openweathermap.org/geo/1.0/direct?';
    /// Build HTTP get url by passing the required parameters
    if (cityName != null) {
      url += 'q=$cityName';
    } else {
      print('Wrong city name');
    }
    url += '&limit=1000';
    url += '&appid=$_apiKey';
    print('url: $url');
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == STATUS_OK) {
      print('response.body: ${response.body}');
      var jsonBody = json.decode(response.body);
      print('currentLocation response: $jsonBody');
      List<dynamic> citiesList = jsonBody as List<dynamic>;
      print('Сколько городов с таким названием: ${citiesList.length}');
      jsonBody.forEach((item) => print('# $item'));
      Map<String, dynamic>? firstInList = jsonBody[0];
      print('firstInList: $firstInList');
      return citiesList;
      // return firstInList;
    } else {
      print('Ошибка при получении координат города');
      return [];
    }
  }

  Future<Map<String, dynamic>?> _sendRequest(String tag,
      {double? lat, double? lon, String? cityName}) async {
    /// Build HTTP get url by passing the required parameters
    String url = _buildUrl(tag, cityName, lat, lon);

    /// Send HTTP get response with the url
    final response = await http.get(Uri.parse(url));

    /// Perform error checking on response:
    /// Status code 200 means everything went well
    if (response.statusCode == STATUS_OK) {
      Map<String, dynamic>? jsonBody = json.decode(response.body);
      return jsonBody;
    }

    /// The API key is invalid, the API may be down
    /// or some other unspecified error could occur.
    /// The concrete error should be clear from the HTTP response body.
    else {
      // throw OpenWeatherAPIException("The API threw an exception: ${response.body}");
    }
  }

  String _buildUrl(String tag, String? cityName, double? lat, double? lon) {
    String url = 'https://api.openweathermap.org/data/2.5/' + '$tag?';

    if (cityName != null) {
      url += 'q=$cityName&';
    } else {
      url += 'lat=$lat&lon=$lon&';
    }

    url += 'appid=$_apiKey&';
    url += 'lang=English}';
    // url += 'lang=${_languageCode[language]}';
    return url;
  }
}
