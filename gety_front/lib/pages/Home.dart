import 'package:flutter/material.dart';
import 'package:gety_front/pages/Connection.dart';

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
        /*appBar: new AppBar(
            title: new Text("Gety"),
            centerTitle: true,
            leading: new Icon(Icons.android),
            actions: <Widget>[
              new Icon(Icons.android),
            ],
            elevation: 20.0
        ),*/
        body: new Connection(),
    );
  }
}
