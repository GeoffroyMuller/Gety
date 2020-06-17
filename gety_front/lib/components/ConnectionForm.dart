import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ButtonStyle.dart';

class ConnectionForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ConnectionForm();
  }
}

class _ConnectionForm extends State<ConnectionForm> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 190.0,
          ),
          TextFormField(

            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white)
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'S\'il te plaît entre un email';
              } else {
                //recup email
              }
              return null;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Mots de passe',
                hintStyle: TextStyle(color: Colors.white)),
            validator: (value) {
              if (value.isEmpty) {
                return 'S\'il te plaît entre un mot de passe';
              } else {
                //recup mdp
              }
              return null;
            },
          ),
          SizedBox(
            height: 60.0,
          ),
          ButtonStyle(context, _formKey, null, "CONNEXION"),
        ],
      ),
    );
  }
}
