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
  int intweather;
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
      this.intweather = this.celsius.round();
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,200,0,0),
          child: Column(
            children: <Widget>[
              Center(
                  child:Text(
                    intweather.toString(),
                    textAlign: TextAlign.center,
                  ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}

