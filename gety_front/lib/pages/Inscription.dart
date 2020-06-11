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
    return monformulaire();
    /*return new Form(
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
              labelText: 'mot de passe'
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () => {
                print("TEST INSCRIPTION");
              },
              child: Text('S\'inscrire'),
            ),
          )
        ],
      ),
    ));*/
  }

  Form monformulaire(){
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return 'value: '+value;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
