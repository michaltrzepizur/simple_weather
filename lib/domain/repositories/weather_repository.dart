import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    // http://api.weatherapi.com/v1/current.json?key=93d44bc850fc4ecf926183736250202&q=Katowice&aqi=no
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=93d44bc850fc4ecf926183736250202&q=Katowice&aqi=no');
    print(response.data);
    return const WeatherModel(city: 'Warsaw', temperature: -5.5);
  }
}
