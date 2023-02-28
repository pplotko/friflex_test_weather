import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test_weather/service/city_coordinates/city_coordinates.dart';

import '../service/onecall_weather/onecall_weather.dart';
import '../service/weather_repository.dart';
import './weather_state.dart';
import './weather_event.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeathersRepository weathersRepository;

  WeatherBloc(this.weathersRepository) : super(WeatherEmptyState()) {
    on<WeatherLoadEvent>((event, emit) async {
      emit(WeatherLoadingState());
      try {
        ///making a request for coordinates  of the entered city
        List<CityCoordinates> cityLocations =
            await weathersRepository.getLocation(event.text);
        if (cityLocations.length == 1 ) {
          ///we have only one city and making a request for weather in the entered city
          final OneCallWeather loadedWeather =
              await weathersRepository.getAllWeathers(cityLocations[0]);
          final String loadedPlace = event.text;
          emit(WeatherLoadedState(
            loadedWeather: loadedWeather,
            loadedPlace: loadedPlace,
            cityState: cityLocations[0].state,
            cityCountry: cityLocations[0].country,
          ));
        }
        if (cityLocations.length > 1 ) {
          ///we have to choose a city from the list
          emit(WeatherChoosingCityState(
            cityLocations: cityLocations,
          ));
        }
        // final OneCallWeather _loadedWeather = await weathersRepository.getAllWeathers();
        // final String _loadedPlace = await weathersRepository.getPlace(); //making a request if we need to have a place name

      } catch (_) {
        emit(WeatherErrorState());
      }
    });

    on<WeatherLoadEventWithCityCoordinates>((event, emit) async {
      emit(WeatherLoadingState());
      try {
        List<CityCoordinates> cityLocations =
        await weathersRepository.getLocation(event.text);

          final OneCallWeather loadedWeather =
          await weathersRepository.getAllWeathers(cityLocations[event.index]);
          emit(WeatherLoadedState(
            loadedWeather: loadedWeather,
            loadedPlace: event.text,
            cityState: cityLocations[event.index].state,
            cityCountry: cityLocations[event.index].country,

          ));
      } catch (_) {
        emit(WeatherErrorState());
      }
    });

    on<WeatherClearEvent>((event, emit) async {
      emit(WeatherEmptyState());
    });
  }
}
