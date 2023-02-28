import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';
import '../bloc/weather_event.dart';
import '../bloc/weather_state.dart';
import '../theme_cubit/theme_cubit.dart';
import './weather_in_three_days.dart';

class DetailedWeatherInformationPage extends StatefulWidget {
  const DetailedWeatherInformationPage({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  State<DetailedWeatherInformationPage> createState() =>
      _DetailedWeatherInformationPageState();
}

class _DetailedWeatherInformationPageState
    extends State<DetailedWeatherInformationPage> {

  @override
  void initState() {
    /// sending event to upload state
    BlocProvider.of<WeatherBloc>(context).add(WeatherLoadEvent(widget.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Creating a SnackBar widget to show during an error
    SnackBar snackBar = SnackBar(
      content: const Text('Ошибка получения данных'),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height/2- 50,
        left: 24,
        right: 24,
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('City: ${widget.text}'),
        actions: [
          IconButton(
            key: const Key('brightness'),
            icon: const Icon(Icons.brightness_6),
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
          ),
          ///Button for next page: WeatherInThreeDays
          IconButton(
            key: const Key('weather_in_three_days_iconButton'),
            icon: const Icon(Icons.more_horiz),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WeatherInThreeDays(text: widget.text,)),
            ),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          /// I need a listener to throw out the snack bar when an error occurs
          BlocListener <WeatherBloc, WeatherState>(
            listener: (ctx, state) {
              if (state is! WeatherErrorState) return;
              ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
            })
        ],
        /// building ui depending on the state
        child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherEmptyState) {
                const Center(child: Text('No data received. Press button "Load"',
                    style: TextStyle(fontSize: 20.0),
                  ),
                );
              }
              if (state is WeatherLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFFf9e3ce),
                  ),
                );
              }
              if (state is WeatherLoadedState) {
                final iconUrl = 'http://openweathermap.org/img/w/'
                    '${state.loadedWeather.current.weather[0].icon}.png';
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text( ///showing the current temperature
                                      '${state.loadedWeather.current.temp != null
                                          ? (state.loadedWeather.current.temp - 273).roundToDouble()
                                          : 'нет данных'}',
                                      style: const TextStyle(
                                        fontSize: 32,
                                        color: Color(0XFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      '°C',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Color(0XFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '${state.loadedWeather.current.weather[0].main != null
                                      ? state.loadedWeather.current.weather[0].main
                                      : 'нет данных'} ',
                                  style: const TextStyle(
                                    fontSize: 24,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            /// Show current weather icon
                            Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: Image.network(
                                iconUrl,
                                scale: 0.5,
                                loadingBuilder: (_, child, loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;
                                  }
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                                errorBuilder: (_, error, stackTrace) {
                                  print('$error $stackTrace');
                                  return SnackBar(
                                    content: Container(
                                      padding: const EdgeInsets.only(top: 30, bottom: 10),
                                      child: Icon(
                                        Icons.signal_wifi_connected_no_internet_4,
                                        color: Colors.grey[600],
                                        size: 60,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'pressure: ${state.loadedWeather.current.pressure != null
                              ? (state.loadedWeather.current.pressure)
                              : 'нет данных'} hPa',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'humidity: ${state.loadedWeather.current.humidity != null
                              ? (state.loadedWeather.current.humidity)
                              : 'нет данных'} %',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'wind speed: ${state.loadedWeather.current.wind_speed != null
                              ? (state.loadedWeather.current.wind_speed)
                              : 'нет данных'} m/s',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'weather description: ${state.loadedWeather.current.weather[0].description != null
                              ? (state.loadedWeather.current.weather[0].description)
                              : 'нет данных'} ',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 40),

                        // Show current weather coordinates
                        Text('State: ${state.cityState} '),
                        Text('Country: ${state.cityCountry} '),
                        const Text('Location coordinates:'),
                        Text('longitude= ${state.loadedWeather.lon ?? 'нет данных'},'
                            ' latitude = ${state.loadedWeather.lat ?? 'нет данных'}'
                        ),

                        const SizedBox(height: 4),
                      ],
                    ),]
                  ),
                );
              }


              if (state is WeatherChoosingCityState){
                final cityLocationsList = state.cityLocations;

                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cityLocationsList.length,
                  itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: ListTile(
                     leading: const Icon(Icons.location_city),
                      title:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cityLocationsList[index].state, style: const TextStyle(fontSize: 18)),
                          Text(cityLocationsList[index].country, style: const TextStyle(fontSize: 22)),
                        ],
                      ),
                      subtitle: Text("city.latitude: ${cityLocationsList[index].latitude}, city.longitude: ${cityLocationsList[index].longitude}'"),
                    ),
                    onTap: () {BlocProvider.of<WeatherBloc>(context).add(WeatherLoadEventWithCityCoordinates(widget.text, index));},
                  );}
                );
              }
              return Container();
            }
        ),
      ),
    );
  }
}
