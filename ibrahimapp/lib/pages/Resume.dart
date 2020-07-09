import 'package:flutter/material.dart';
class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Resume"),
      ),
      body: Column(
        children: <Widget>[
      Text(
      "BSc Computer Science",
    ),
    Text(
    "Msc Computer Science",
    ),
    Text(
    "PhD Computer Science",
    ),

    ],

    ),
    );
  }
}
