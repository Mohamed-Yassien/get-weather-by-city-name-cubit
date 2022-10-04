import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_bloc/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app_with_bloc/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app_with_bloc/screens/search_screen.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>const SearchScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherStates>(
        builder: (context, state) {
          var cubit = WeatherCubit.get(context);

          if (state is GetWeatherSuccessState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cubit.weatherModel!.main,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    cubit.weatherModel!.description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    cubit.weatherModel!.name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            );
          } else if (state is GetWeatherLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetWeatherErrorState) {
            return const Center(
              child: Text(
                'Some Error Occurred 😦',
              ),
            );
          } else {
            return Center(
              child: Text(
                'Start Use Our App ,Search Now 🥰',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            );
          }
        },
      ),
    );
  }
}
