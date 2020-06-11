import 'dart:ui';

import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Inscription();
  }
}

class _Inscription extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return new Form(
        child: Padding(
      padding: new EdgeInsets.all(20),
      child: new Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                labelText: 'email'
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'mdp'
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('Connexion'),
            ),
          )
        ],
      ),
    ));
  }
}
