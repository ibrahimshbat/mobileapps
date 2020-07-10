import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String time ;
  String url;

  WorldTime({this.url});

  Future<void> getTime() async{
    Response dataRespo;
    try{
       dataRespo = await get("http://worldtimeapi.org/api/timezone/$url");
       Map data = jsonDecode(dataRespo.body);
       String datetime = data['datetime'];
       String offset = data['utc_offset'].substring(1,3);
       DateTime now = DateTime.parse(datetime);
       now = now.add(Duration(hours: int.parse(offset)));
       time = now.toString();
       return time;
    }catch(e){
      print("catch erro  $e");
      time = "API Problem";
    }

  }


}