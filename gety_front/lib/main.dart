import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mon Application",
      theme: new ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Gety"),
        leading: new Icon(Icons.android),
        actions: <Widget>[
          new Icon(Icons.android),
          new Icon(Icons.android),
          new Icon(Icons.android),
        ],
        elevation: 20.0,
      ),
      backgroundColor: Colors.red
    );
  }
}

