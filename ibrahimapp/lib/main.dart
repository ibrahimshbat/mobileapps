import 'package:flutter/material.dart';
import 'package:ibrahimapp/pages/home.dart';
import 'package:ibrahimapp/pages/Loading.dart';
import 'package:ibrahimapp/pages/Resume.dart';
import 'package:ibrahimapp/pages/About.dart';
import 'package:ibrahimapp/pages/Location.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/About',
  routes: {
    '/': (context) => Loading(),
    '/Home': (context) => Home(),
    '/Resume': (context) => Resume(),
    '/About': (context) => About(),
    '/Location': (context) => Location(),
  },
));

