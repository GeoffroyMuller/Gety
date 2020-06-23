import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/pages/Messagerie.dart';

class ButtonStyle extends Container {
  ButtonStyle(
    BuildContext context,
    GlobalKey<FormState> _formKey,
    VoidCallback onPressed,
    String name,
  ) : super(
          height: 50,
          child: RaisedButton(
            onPressed: onPressed = () {
              
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              print("ButtonStyle [$name] : Pressed");

              if (_formKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                FocusScope.of(context)
                    .requestFocus(new FocusNode()); //defocus le clavier
                Scaffold.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('ButtonStyle [$name] submit validate')));
                print("ButtonStyle [$name] Form : Submit validate");
                /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new Messagerie()),
                );*/
              }
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context){
                    return new Messagerie("Messagerie");
                  }
              ));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              100.0,
            )),
            padding: EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
}