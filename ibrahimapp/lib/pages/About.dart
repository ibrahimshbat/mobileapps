import 'package:flutter/material.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
      body: Text(
          "About Me",
      ),
    );
  }
}
