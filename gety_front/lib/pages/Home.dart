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
      appBar: AppBar(
        title: Text('HOME Gety test'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Connexion'),
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/connection');
          },
        ),
      ),
    );
  }
}
