import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';

class Messagerie extends StatefulWidget {

  Messagerie(String s);

  @override
  State<StatefulWidget> createState() {
    SnackBar(backgroundColor: Colors.red, content: Text('Test: Connexion'));
    return new _Messagerie();
  }
}

class _Messagerie extends State<Messagerie> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("Messagerie"),
      ),
    );
  }
}