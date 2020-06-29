import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gety_front/components/ConnectionForm.dart';
import 'package:gety_front/config/styles.dart';
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
    new User(id: 2, firstname: "Geoffroy", lastname: "MULLER", email: "geoff@localmail.fr", password: "testpwd", avatar: "geoff")
  ];

  List<int> _selectedUser = [];

  bool selectUser(User user) {
    if (_selectedUser.indexOf(user.id) != -1) {
      _selectedUser.remove(user.id);
    } else {
      _selectedUser.add(user.id);
    }
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    //_selectedUser=List();
    return Scaffold(
      appBar: AppBar(
        title: Text('Etienne Tests'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 0.0, top: 20.0),
        child: ListView(
          children: <Widget>[
            this.renderUserTable(),
            Align(
                alignment: Alignment(.925, 0),
                child: IconButton(
                    icon: Icon(Icons.delete_forever, color: Colors.red),
                    onPressed: () => {this.delete()},
                    //child: Text('Delete', style: TextStyle(color: Colors.black))
                )
            ),
          ],
        ),
      ),
    );
  }

  delete() {
    print(_selectedUser);
  }

  renderUserTable() {
    return DataTable(
        columnSpacing: 4,
        showCheckboxColumn: true,
        dataRowHeight: 40,
        headingRowHeight: 60,
        columns: const <DataColumn>[
          DataColumn(label: Text('ID', style: listHeaderTextStyle)),
          DataColumn(label: Text('Avatar', style: listHeaderTextStyle)),
          DataColumn(label: Text('Firstname', style: listHeaderTextStyle)),
          DataColumn(label: Text('Lastname', style: listHeaderTextStyle)),
          DataColumn(label: Text('Email', style: listHeaderTextStyle)),
        ],
        rows: _users.map((user) => DataRow(
            onSelectChanged: (bool input)  => this.selectUser(user),
            selected: _selectedUser.indexOf(user.id) != -1,
            cells: <DataCell>[
              DataCell(Text(user.id.toString())/*, onTap: ()  => this.selectUser(user)*/),
              DataCell(Text(user.avatar), /*, onTap: ()  => this.selectUser(user)*/),
              DataCell(Text(user.firstname)/*, onTap: ()  => this.selectUser(user)*/),
              DataCell(Text(user.lastname)/*, onTap: ()  => this.selectUser(user)*/),
              DataCell(Text(user.email)/*, onTap: ()  => this.selectUser(user)*/)
            ]
        )).toList()
    );
  }
}