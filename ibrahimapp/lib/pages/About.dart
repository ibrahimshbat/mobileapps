import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:ibrahimapp/services/WorldTime.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  String name = "Ibrahim Elsanosi";
  int age = 43;
  WorldTime wt= new WorldTime(url: "Africa/Tunis");
  String time = "Coming....";

    void initState(){
    // TODO: implement initState
    super.initState();
    setup();
  }

  void setup() async{
    await wt.getTime();
   print(wt.time);
   setState(() {
     this.time = wt.time;
   });
   Navigator.pushReplacementNamed(context, "/Home", arguments: {
      'time': this.time,
      'url': wt.url,
       'isDayTime':wt.isDayTime,
   });
    print("TimeThis = " + this.time);
//
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[300],
        title: Text("About"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Text(
            "About Me: $name - $age ",
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                name = "Aishah Ahmed";
                age = 36;
              });
            },
            child: Text("Edit"),
          ),
          FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, "/Resume");
              },
              icon: Icon(Icons.navigate_next),
              label: Text("Next"),
          ),
          Text(
            "Time = " + this.time,
          ),
       SpinKitFadingCircle(
        color: Colors.redAccent,
        size: 80.0,
      )
        ],
      ),

    );
  }
}
