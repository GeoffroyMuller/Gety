import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';

class TestGeoff extends StatefulWidget {
  TestGeoff();

  @override
  State<StatefulWidget> createState() {
    return new _TestGeoff();
  }
}

class _TestGeoff extends State<TestGeoff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestGeoff Gety test'),
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