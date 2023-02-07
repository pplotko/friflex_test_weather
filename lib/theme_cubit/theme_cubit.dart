import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme);

  // static final _lightTheme = ThemeData(
  //   canvasColor:Colors.lightBlue[50],
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     foregroundColor: Colors.yellow,
  //   ),
  //   backgroundColor: Colors.blueGrey,
  //   primaryColorLight: Colors.blueGrey,
  //   brightness: Brightness.light,
  // );
  //
  // static final _darkTheme = ThemeData(
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     foregroundColor: Colors.black,
  //   ),
  //   brightness: Brightness.dark,
  //   backgroundColor: Colors.green,
  // );

  static final _lightTheme =
  // ThemeData(
  //   canvasColor:Colors.lightBlue[50],
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     foregroundColor: Colors.yellow,
  //   ),
  //   brightness: Brightness.light,
  // );
  ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      // backgroundColor: Colors.blueGrey,
      brightness: Brightness.light,
    )
        .copyWith(secondary: Colors.amber),
    brightness: Brightness.light,
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
  );

  static final _darkTheme =  ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      // backgroundColor: Colors.blueGrey,
      brightness: Brightness.dark,
    )
        .copyWith(secondary: Colors.amber),
    brightness: Brightness.dark,
    errorColor: Colors.orange,
    fontFamily: 'Quicksand',
    textTheme: ThemeData
        .dark()
        .textTheme
        .copyWith(
      titleMedium: const TextStyle(
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
    print('change between light and dark');
  }
}