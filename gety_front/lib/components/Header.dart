import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends AppBar {

  Header(){
    AppBar(
        title: new Text("Gety"),
        leading: new Icon(Icons.android),
        actions: <Widget>[
          new Icon(Icons.android),
          new Icon(Icons.android),
          new Icon(Icons.android),
        ],
        elevation: 20.0
    );
  }
}
