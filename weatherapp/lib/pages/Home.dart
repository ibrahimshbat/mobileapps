import 'package:flutter/material.dart';
import 'package:weatherapp/services/DateDayTime.dart';
import 'package:weatherapp/services/WeatherData.dart';
import 'package:weather/weather_library.dart';
import 'dart:convert';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  WeatherData wd = new WeatherData();
  Weather w;
  double celsius;
  int hour;
  int minute;
  int intweather;
  DayTime dayTime;
  Country seleted_country;
  dynamic dayData =
      '{ "1" : "Mon", "2" : "Tue", "3" : "Wed", "4" : "Thur", "5" : "Fri", "6" : "Sat", "7" : "Sun" }';
  void initState(){
    // TODO: implement initState
    super.initState();
    setup();
  }
  void setup() async{
    await wd.getWweather();
    print("////////");
    print(wd.w);
    setState(() {
      this.w = wd.w;
      this.celsius = this.w.temperature.celsius;
      this.intweather = this.celsius.round();
      this.hour = this.w.date.hour;
      this.minute = this.w.date.minute;
      var findData = DateTime.parse(this.w.date.toString());
      print(".......");
      print(this.w.date.toString());
      print(findData.hour);
      print(findData.minute);
      print(jsonDecode(dayData)['2']);
      this.dayTime = new DayTime(jsonDecode(dayData)['${findData.weekday}'], findData.hour, findData.minute);
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
                  'City: ${this.w.areaName}',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child:Text(
                  '${this.dayTime.dayOfWeek}  ${this.dayTime.hour}:${this.dayTime.minute}',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              Center(
                child:Text(
                  intweather.toString(),
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Center(
                child:Text(
                  '${this.w.weatherDescription}',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Center(
                child:Text(
                  'Humidity: ${this.w.humidity.round()}%',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Center(
                child:Text(
                  'Wind: ${this.w.windSpeed} mph',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              new Center(
                child: CountryPicker(
                  dense: false,
                  showFlag: true,  //displays flag, true by default
                  showDialingCode: false, //displays dialing code, false by default
                  showName: true, //displays country name, true by default
                  showCurrency: false, //eg. 'British pound'
                  showCurrencyISO: true, //eg. 'GBP'
                  onChanged: (Country country) {
                    setState(() {
                      seleted_country = country;
                    });
                  },
                  selectedCountry: seleted_country,
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}

