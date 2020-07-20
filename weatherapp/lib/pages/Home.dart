import 'package:flutter/material.dart';
import 'package:weatherapp/services/WeatherData.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    WeatherData wd = new WeatherData();
    wd.getWweather();
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
        centerTitle: true,
      ),
    );
  }
}

