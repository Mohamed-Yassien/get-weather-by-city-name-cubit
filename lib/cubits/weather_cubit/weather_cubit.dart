import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_bloc/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app_with_bloc/models/weather_model.dart';

import '../../core/network.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);

  WeatherModel? weatherModel;

  void getWeather({required String cityName}) async {
    emit(GetWeatherLoadingState());
    try {
      final response = await Dio().get(getWeatherByNameUrl(cityName: cityName));
      weatherModel = WeatherModel.fromJson(response.data);
      print(weatherModel!.name);
      emit(GetWeatherSuccessState());
    } catch (e) {
      print(e);
      emit(GetWeatherErrorState());
    }
  }
}
