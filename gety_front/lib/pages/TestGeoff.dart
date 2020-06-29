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
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [Colors.red, Colors.purple],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            )),
        child: Center(
          child: Card(
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 1,
              child: Container(
                child: Image.network(
                  //'https://cdn.futura-sciences.com/buildsv6/images/wide1920/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
                  'https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/72218376_1411720105676262_1208203415948099584_o.jpg?_nc_cat=103&_nc_sid=09cbfe&_nc_ohc=Fr4064dqKpQAX-_Tk8-&_nc_ht=scontent-cdt1-1.xx&oh=adc9d35a061e17dbe3502f4c28752288&oe=5F1ED360',
                 // color: Colors.blue,
                 // colorBlendMode: BlendMode.darken,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.red,
          height: 75,
          margin: EdgeInsets.only(left: 0.0, right: 0.0),
          child: Image(image: AssetImage('assets/images/test.png')),

          //child: Image.network('https://jpg2pdf.com/images/jpg2pdf/icon.png'),
        ),
      ),
    );
  }
}
