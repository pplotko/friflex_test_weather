import 'package:flutter/material.dart';

import '../service/weather_repository.dart';
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
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(title: const Text('City Search')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
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
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailedWeatherInformationPage(text: _text,)),
              );
            },
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }
}
