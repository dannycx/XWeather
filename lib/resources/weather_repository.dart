import 'package:flutter_weather/model/weather_model.dart';
import 'package:flutter_weather/resources/weather_api_provider.dart';

class XWeatherRepository {
  final weatherApiProvider = XWeatherApiProvider();

  Future<XWeatherModel> searchWeather() => weatherApiProvider.searchWeather();
}
