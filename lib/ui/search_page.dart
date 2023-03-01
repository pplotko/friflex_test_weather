import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/weather_repository.dart';
import '../theme_cubit/theme_cubit.dart';
import 'detailed_weather_information_page.dart';

///The search page allows users to enter the name of the city and provides them result

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _textController = TextEditingController();
  final weatherRepository = WeathersRepository();

  ///we get it text from the TextField's controller
  String get _text => _textController.text;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    SnackBar snackBar = SnackBar(
      content: const Text('Please enter the name of the city'),
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
        title: const Text('City Search'),
        actions: [
          IconButton(
            key: const Key('brightness'),
            icon: const Icon(Icons.brightness_6),
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              /// TextField for entering the name of the city
              /// to transmit the input value, we use _textController
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'City',
                  hintText: 'Minsk',
                ),
              ),
            ),
            /// A button to confirm the input and move on...
            ElevatedButton(
              onPressed: () {
                if (_text.isNotEmpty) {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailedWeatherInformationPage(text: _text,)),
                );
                } else { ScaffoldMessenger.of(context).showSnackBar(snackBar);};
              },
              child: const Text('Accept'),
            ),
          ],
        ),]
      ),
    );
  }
}
