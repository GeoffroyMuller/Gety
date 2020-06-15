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
                  child: ConnectionForm(),
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

  Scaffold monformulaire2() {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Mots de passe",
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30.0),
                      //elevation: 5.0,
                      child: MaterialButton(
                        onPressed: () => {},
                        minWidth: 150.0,
                        height: 50.0,
                        color: Color(0xFF179CDF),
                        child: Text(
                          "CONNEXION",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        32.0,
                      ),
                      side: BorderSide(color: Color(0xFF179CDF))),
                  child: Text(
                    "SKIP SIGN UP FOR NOW",
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF179CDF)),
                  ),
                )),
          ],
        ),
      ),
    );
  }

}
