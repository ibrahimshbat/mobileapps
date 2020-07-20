import 'package:flutter/material.dart';
import 'package:weatherapp/pages/Home.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/Home',
  routes: {
    // '/': (context) => Loading(),
    '/Home': (context) => Home(),
    // '/Resume': (context) => Resume(),
    //  '/About': (context) => About(),
    //  '/Location': (context) => City(),
  },
));