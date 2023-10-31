import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  final String main;
  final String description;
  final String name;
  final dynamic temp;

  const WeatherModel({
    required this.main,
    required this.description,
    required this.name,
    required this.temp,
  });

  @override
  List<Object> get props => [main, description, name];

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        main: json['weather'][0]['main'],
        description: json['weather'][0]['description'],
        name: json['name'],
        temp: json['main']["temp"],
      );
}
