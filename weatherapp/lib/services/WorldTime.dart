import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime {
  String location;
  String flag;
  String time ;
  String url;
  bool isDayTime;

  WorldTime({this.url, this.location, this.flag});

  Future<void> getTime() async{
    Response dataRespo;
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
    }

  }


}