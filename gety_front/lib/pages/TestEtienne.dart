import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';

class TestEtienne extends StatefulWidget {
  TestEtienne();

  @override
  State<StatefulWidget> createState() {
    return new _TestEtienne();
  }
}

class _TestEtienne extends State<TestEtienne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestEtienne Gety test'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back Swipe Home Context '),
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}