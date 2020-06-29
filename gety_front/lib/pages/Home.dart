import 'package:flutter/material.dart';
import 'package:gety_front/pages/Connection.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home> {
  bool clickedCentreFAB = false; //boolean used to handle container animation which expands from the FAB
  int selectedIndex = 0; //to handle which item is currently selected in the bottom app bar
  String text = "Home";

  //call this method on click of each bottom app bar item to update the screen
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            SizedBox(height: 100),
            RaisedButton(
              child: Text('Launch Connexion'),
              onPressed: () {
                // Navigate to the second screen when tapped.
                Navigator.pushNamed(context, '/connection');
              },
            ),
            SizedBox(height: 100),
            RaisedButton(
              child: Text('TestEtienne'),
              onPressed: () {
                // Navigate to the second screen when tapped.
                Navigator.pushNamed(context, '/testetienne');
              },
            ),
            RaisedButton(
              child: Text('TestGeoff'),
              onPressed: () {
                // Navigate to the second screen when tapped.
                Navigator.pushNamed(context, '/testgeoff');
              },
            ),
          ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            color : Colors.red,
            height: 75,
            margin: EdgeInsets.only(left: 0.0, right: 0.0)
        ),
      ),
    );
  }
}
 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME Gety test'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Connexion'),
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/connection');
          },
        ),
      ),
    );
  }
}}*/

