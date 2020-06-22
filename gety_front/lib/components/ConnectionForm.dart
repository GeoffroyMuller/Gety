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
        child: Center(
          heightFactor: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  errorStyle: TextStyle(
                    color: Colors.white,
                  ),
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
              SizedBox(height: 30),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Mots de passe',
                  hintStyle: TextStyle(color: Colors.white),
                  errorStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'S\'il te plaît entre un mot de passe';
                  } else {
                    //recup mdp
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              ButtonStyle(context, _formKey, null, "CONNEXION"),
              SizedBox(height: 30),
              Container(
                color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text("Mots de passe oublié ?")),
                    Text("S'inscrire",
                        style: TextStyle(
                          color: Colors.blue,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
