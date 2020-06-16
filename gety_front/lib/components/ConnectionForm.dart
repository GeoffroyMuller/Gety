import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'Email',
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
            height: 15.0,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
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

          Container(
            height: 60.0,
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
                  Scaffold.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Test: email et mdp rentré !!')));
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    100.0,
                  )
              ),
              padding: EdgeInsets.all(0.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                ),

                child: Container(
                  alignment: Alignment.center,
                    child: Text(
                      "CONNEXION",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
