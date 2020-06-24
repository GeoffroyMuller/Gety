import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/pages/Messenger.dart';

class ButtonSubmitStyle extends Container {
  ButtonSubmitStyle(
    BuildContext context,
    GlobalKey<FormState> _formKey,
    VoidCallback onPressed,
    String name,
  ) : super(
          height: 50,
          child: RaisedButton(
            onPressed: onPressed == null ? (){} : onPressed,
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

      /* void test () {
  if(onPressed == null){
  print("fffffffffffffff");
  }else{
  print("gg");
  }
  print("ButtonStyle [$name] : Pressed");

  if (_formKey.currentState.validate()) {
  //defocus le clavier
  FocusScope.of(context).requestFocus(new FocusNode());

  Scaffold.of(context).showSnackBar(SnackBar(
  backgroundColor: Colors.red,
  content: Text('ButtonStyle [$name] submit validate')));
  print("ButtonStyle [$name] Form : Submit validate");

  }
  /*Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context){
                    return new Messenger();
                  }
              ));*/
  }*/
}
