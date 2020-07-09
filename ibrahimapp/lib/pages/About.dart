import 'package:flutter/material.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  String name = "Ibrahim Elsanosi";
  int age = 43;

  void getinfo() async{
    await Future.delayed(Duration(seconds: 5), (){
      print("Hello this is info");
    });
    await Future.delayed(Duration(seconds: 2), (){
      print("sync1");
    });
    print("Hello1");

  }
  void initState() {
    // TODO: implement initState
    super.initState();
    getinfo();
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
          )
        ],
      ),

    );
  }
}
