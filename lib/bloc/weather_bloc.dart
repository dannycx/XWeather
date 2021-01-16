import 'package:flutter_weather/model/weather_model.dart';
import 'package:flutter_weather/resources/weather_repository.dart';
import 'package:rxdart/rxdart.dart';

class XWeatherBloc {
  final _repository = XWeatherRepository();
  final _weatherResult = PublishSubject<XWeatherModel>();

  Observable<XWeatherModel> get cityWeather => _weatherResult.stream;

  weatherResult() async {
    XWeatherModel weatherModel = await _repository.searchWeather();
    _weatherResult.sink.add(weatherModel);
  }

  dispose() {
    _weatherResult.close();
  }
}

final xBloc = XWeatherBloc();