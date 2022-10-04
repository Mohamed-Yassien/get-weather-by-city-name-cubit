import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/weather_cubit/weather_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'search here',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyText2,
            decoration: InputDecoration(
              hintText: 'search',
              hintStyle: Theme.of(context).textTheme.caption,
            ),
            onFieldSubmitted: (val) {
              context.read<WeatherCubit>().getWeather(cityName: val);
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
