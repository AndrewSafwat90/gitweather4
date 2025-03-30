import 'package:flutter/material.dart';
import 'package:gitweather4/views/search-view.dart';
import 'package:gitweather4/widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchView();
                },
              ));
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: NoWeatherBody(),
    );
  }
}
