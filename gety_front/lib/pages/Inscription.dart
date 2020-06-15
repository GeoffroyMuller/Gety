import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';

class Inscription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Inscription();
  }
}

class _Inscription extends State<Inscription> {

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Container(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Card(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                )
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Mots de passe oublié ?")),
                Text("S'inscrire",
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
