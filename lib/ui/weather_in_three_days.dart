import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test_weather/ui/list_weather_forecast.dart';
import 'package:friflex_test_weather/ui/search_page.dart';

import '../bloc/weather_bloc.dart';
import '../bloc/weather_event.dart';
import '../bloc/weather_state.dart';
import '../theme_cubit/theme_cubit.dart';

class WeatherInThreeDays extends StatefulWidget {
  const WeatherInThreeDays({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<WeatherInThreeDays> createState() => _WeatherInThreeDaysState();
}

class _WeatherInThreeDaysState extends State<WeatherInThreeDays> {

  @override
  void initState() {
    BlocProvider.of<WeatherBloc>(context).add(WeatherLoadEvent(widget.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            IconButton(
              key: const Key('search_iconButton'),
              icon: const Icon(Icons.search),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              ),
            ),
          ],
        ),
        body: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherEmptyState) {
                return const Center(
                  child: Text(
                    'No data received. Press button "Load"',
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
              return const ListWeatherForecast();
            }
            return Container();
          },
        )
    );
  }
}
