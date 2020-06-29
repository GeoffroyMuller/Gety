import 'package:flutter/material.dart';
import 'package:gety_front/pages/Connection.dart';
import 'package:gety_front/pages/Home.dart';
import 'package:gety_front/pages/Messenger.dart';
import 'package:gety_front/pages/SwipeHome.dart';
import 'package:gety_front/pages/TestEtienne.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mon Application",
      theme: new ThemeData.dark(
          //primarySwatch: Colors.blueGrey
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => new Home(),
        '/connection': (context) => new Connection(),
        '/messenger' : (context) => new Messenger(),
        '/swipehome' : (context) => new SwipeHome(),

        '/testetienne' : (context) => new TestEtienne(),
        '/testgeoff' : (context) => new SwipeHome(),

      },
    );
  }
}



