import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/weather_bloc.dart';
import './service/weather_repository.dart';
import './ui/search_page.dart';

void main() {
  runApp(MyApp());
}
// This widget is the root of the application.
class MyApp extends StatelessWidget {
  final weatherRepository = WeathersRepository();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///creating WeatherBloc at the top of the tree over MaterialApp
    return BlocProvider <WeatherBloc>(
      create: (BuildContext context) => WeatherBloc(weatherRepository),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FriflexTestWeather',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blueGrey,
              backgroundColor: Colors.blueGrey,

          )
          .copyWith(secondary: Colors.amber),
          errorColor: Colors.orange,
          fontFamily: 'Quicksand',
          textTheme: ThemeData
            .light()
            .textTheme
            .copyWith(
            titleMedium: const TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        /// go to the main page
        home: const SearchPage(),
        ),
      );
  }
}