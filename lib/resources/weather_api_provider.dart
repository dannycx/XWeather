
import 'package:flutter_weather/model/weather_model.dart';
import 'package:http/http.dart' show Client;

class XWeatherApiProvider {
  Client client = Client();

  final _weatherKey = "";

  Future<XWeatherModel> searchWeather() async {
    String url =
        "https://?appid=$_weatherKey&city=";

    final response = await client.get(url);
    if (response.statusCode == 200) {
      // return NewsModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Faild to post!");
    }
  }
}