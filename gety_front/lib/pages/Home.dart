import 'package:flutter/material.dart';
import 'package:gety_front/components/Header.dart';
import 'package:gety_front/pages/Inscription.dart';

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
            ],
            elevation: 20.0
        ),
        body: new Inscription(),
    );
  }
}
