abstract class WeatherEvent {}


class WeatherLoadEvent extends WeatherEvent {
  final String text;
  WeatherLoadEvent(this.text);
}

class WeatherClearEvent extends WeatherEvent {}