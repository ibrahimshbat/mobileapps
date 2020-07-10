import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, "/About");
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text("Location")
              ),
              Text(
                data['url'],
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 60,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
