abstract class WeatherEvent {}


class WeatherLoadEvent extends WeatherEvent {
  final String text;
  WeatherLoadEvent(this.text);
}

class WeatherLoadEventWithCityCoordinates extends WeatherEvent {
  final String text;
  final int index;
  WeatherLoadEventWithCityCoordinates(this.text, this.index);
}

class WeatherClearEvent extends WeatherEvent {}