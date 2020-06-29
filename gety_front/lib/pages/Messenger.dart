import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';

class Messenger extends StatefulWidget {
  Messenger();

  @override
  State<StatefulWidget> createState() {
    SnackBar(backgroundColor: Colors.red, content: Text('Test: Connexion'));
    return new _Messenger();
  }
}

class _Messenger extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger Gety test'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back Swipe Home Context '),
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
