import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipeHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SwipeHome();
  }
}

class _SwipeHome extends State<SwipeHome> {
  @override
  Widget build(BuildContext context) {
    TabBar _tabBar = new TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: <Widget>[
        Container(
          color: Colors.red,
        )
      ],
    );
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: new AppBar(
              bottom: PreferredSize(
                preferredSize:
                    Size.fromHeight(_tabBar.preferredSize.height -10),
                child: _tabBar,
              ),
            ),
            body: Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                colors: [Colors.red, Colors.purple],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              )),
              child: Center(
                child: RaisedButton(
                  child: Text('Messagerie'),
                  onPressed: () {
                    // Navigate to the second screen when tapped.
                    Navigator.pushNamed(context, '/messenger');
                  },
                ),
              ),
            )));
  }
}
