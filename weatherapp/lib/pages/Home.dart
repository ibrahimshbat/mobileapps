import 'package:flutter/material.dart';
import 'package:weatherapp/services/WeatherData.dart';
import 'package:weather/weather_library.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  WeatherData wd = new WeatherData();
  Weather w;
  double celsius;
  void initState(){
    // TODO: implement initState
    super.initState();
    setup();
  }
  void setup() async{
    await wd.getWweather();
    print(wd.w);
    setState(() {
      this.w = wd.w;
      this.celsius = this.w.temperature.celsius;
    });
//    Navigator.pushReplacementNamed(context, "/Home", arguments: {
//      'time': this.time,
//      'url': wt.url,
//      'isDayTime':wt.isDayTime,
//      'location':wt.location,
//    });
    print("celsius = " + this.w.temperature.celsius.toString());
//
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(
            $this.celsius,
          )
        ],
      ),
    );
  }
}

