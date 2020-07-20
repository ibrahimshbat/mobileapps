import 'package:flutter/material.dart';
//import 'package:http/http.dart';
import 'package:weather/weather_library.dart';

class WeatherData {
  Weather w;

  Future<void> getWweather() async {
    WeatherFactory wf = new WeatherFactory("59c75b19da49aede452fe89cdbe2d695");
    try {
      w = await wf.currentWeatherByCityName("Roma");
      print(w.temperature.celsius);
      print(w.country);
      print(w.date);
      return w;
    } catch (e) {
      print("catch erro  $e");
      //time = "API Problem";
    }

    /* Response dataRespo;
    try{
      print("Time ------------------------");
      dataRespo = await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(dataRespo.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour >= 6 && now.hour <= 18?true:false;
      time = DateFormat.jm().format(now);
      print("Time ------ $time");
      return time;
    }catch(e){
      print("catch erro  $e");
      time = "API Problem";
    }*/
  }
}
