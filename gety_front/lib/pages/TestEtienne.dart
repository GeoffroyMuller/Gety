import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';
import 'package:gety_front/models/User.dart';

class TestEtienne extends StatefulWidget {
  TestEtienne();

  @override
  State<StatefulWidget> createState() {
    return new _TestEtienne();
  }
}

class _TestEtienne extends State<TestEtienne> {
  List<User> _users = [
    new User(id: 1, firstname: "Etienne", lastname: "ROBERT", email: "etienne@localmail.fr", password: "testpwd", avatar: "etienne"),
    new User(id: 1, firstname: "Geoffroy", lastname: "MULLER", email: "geoff@localmail.fr", password: "testpwd", avatar: "geoff")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestEtienne Gety test'),
      ),
      body: Center(
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Firstname',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Lastname',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Email',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: _users.map((user) => DataRow(
            cells: <DataCell>[
              DataCell(Text(user.firstname)),
              DataCell(Text(user.lastname)),
              DataCell(Text(user.email))
            ]
          )).toList()
          /*const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
          ],*/
        ),
      ),
    );
  }
}