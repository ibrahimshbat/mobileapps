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
        child: Column(
          children: <Widget>[
            FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, "/About");
                },
                icon: Icon(Icons.info),
                label: Text("About Me")
            ),
            Text(
              data['url'],
            ),
            Text(
              data['time'],
            )
          ],
        )
      ),
    );
  }
}
