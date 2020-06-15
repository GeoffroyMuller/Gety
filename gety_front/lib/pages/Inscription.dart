import 'dart:ui';

import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Inscription();
  }
}

class _Inscription extends State<Inscription> {
  String email;

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
                child: monformulaire(),
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

  Form monformulaire() {
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'Email',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'S\'il te plaît entre un email';
              }else{
                //recup email
              }
              return null;
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Mots de passe',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'S\'il te plaît entre un mot de passe';
              }else{
                //recup mdp
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(

              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                print("test");


                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  //defocus le clavier
                  FocusScope.of(context).requestFocus(new FocusNode());
                  Scaffold
                      .of(context)
                      .showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Test: email et mdp rentré !!')));
                }
              },
              child: Text(
                "CONNEXION",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  Scaffold monformulaire2(){
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


