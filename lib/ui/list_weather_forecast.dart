import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';
import '../bloc/weather_state.dart';

/// we return a list of days with weather sorted by temperature
class ListWeatherForecast extends StatelessWidget {
  const ListWeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String getDayName(double date) { ///determining what day it is today
      int dayNum = DateTime.fromMillisecondsSinceEpoch(
          date.toInt() * 1000, isUtc: false).weekday;
      print('weekday: $dayNum');
      final now = DateTime.now();
      if (now.weekday == dayNum) {
        return 'Today';
      } else {
        final week = [
          'Monday',
          'Tuesday',
          'Wednesday',
          'Thursday',
          'Friday',
          'Saturday',
          'Sunday',
        ];
        print('weekday [0]: ${week[dayNum-1]}');
        return week[dayNum-1];
      }
    }

    return
      BlocBuilder<WeatherBloc, WeatherState>(
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
            return const Center(child: CircularProgressIndicator());
          }
          if (state is WeatherLoadedState) {
            final Map <int, List<num>> indexMap ={};
            final List<int> indexList = [];
            ///I fill the dictionary by keys 0, 1, 2 with a list {index in the block list, temperature value}
            for (int i=0; i <3; i++) {
              indexMap[i] = [i, (state.loadedWeather.daily[i].temp.day - 273).roundToDouble()];
            }
            ///making a sorted dictionary by temperature value
            for (int i=0; i<3; i++) {
              for (int j=0; j<3-i; j++) {
                if (indexMap[j+1] != null
                    && indexMap[j] != null
                    && indexMap[j+1]![1] < indexMap[j]![1]) {
                  var a = indexMap[j];
                  indexMap[j] = indexMap[j+1]!;
                  indexMap[j+1] = a!;
                }
              }
            }
            /// I get a list of indexes for 3 days sorted by minimum temperature from my dictionary
            for (int i=0; i <3; i++) {
              indexList.add(indexMap[i]![0] as int );
            }
            print('отработала сортировка');
            return
              Container(
                color: Theme.of(context).backgroundColor,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0x33f9e3ce),
                    ),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1813173D),
                        offset: Offset(0, 4),
                        blurRadius: 64,
                        spreadRadius: 4,
                      ),
                    ],
                    color: const Color(0x33f9e3ce),
                  ),
                  height: 140,
                  padding: const EdgeInsets.all(16),
                  child:
                  /// I'll use my sorted list of indexes for 3 days: indexList[]
                  /// to show the days with a lower temperature on the screen first
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: indexList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        SizedBox(
                          height: 30,
                          width: 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  height: 25,
                                  width: 80,
                                  child: Text(getDayName(
                                      state.loadedWeather.daily[indexList[index]].dt))),
                              Image.network(
                                'http://openweathermap.org/img/w/'
                                    '${state.loadedWeather.daily[indexList[index]]
                                    .weather[0].icon}.png',
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
                                  return Container(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4),
                                    child: Icon(
                                      Icons
                                          .signal_wifi_connected_no_internet_4,
                                      color: Colors.grey[600],
                                      size: 60,
                                    ),
                                  );
                                },
                              ),
                              Text('${(state.
                              loadedWeather.daily[indexList[index]].temp.day - 273)
                                  .roundToDouble()}°C'),
                            ],
                          ),
                        );
                    }
                  ),
                ),
            );
          }
          return const SizedBox.shrink();
        },
    );
  }
}
