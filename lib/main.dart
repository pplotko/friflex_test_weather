import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/weather_bloc.dart';
import './service/weather_repository.dart';
import './ui/search_page.dart';
import './theme_cubit/theme_cubit.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) print(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

class App extends StatelessWidget {
  /// {@macro app}
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: MainPage(theme: theme,),
        );
      },
    );
  }
}
// This widget is the root of the application.
class MainPage extends StatelessWidget {
  final weatherRepository = WeathersRepository();

  final ThemeData theme;
  MainPage({Key? key, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///creating WeatherBloc at the top of the tree over MaterialApp
    return BlocProvider <WeatherBloc>(
      create: (BuildContext context) => WeatherBloc(weatherRepository),
      child: MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        title: 'FriflexTestWeather',
        /// go to the search page
        home: SearchPage(),
        ),
      );
  }
}