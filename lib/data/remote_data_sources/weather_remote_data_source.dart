import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=93d44bc850fc4ecf926183736250202&q=$city&aqi=no');
      return response.data;
    } on DioError catch (error) {
      throw Exception(error.response?.data['error']['message'] ?? 'Unknow error');
    }
  }
}
