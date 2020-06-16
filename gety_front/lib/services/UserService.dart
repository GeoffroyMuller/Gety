import 'dart:convert';

import 'package:gety_front/models/User.dart';
import 'package:gety_front/services/AbstractService.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class UserService extends AbstractService {
  static UserService _instance;

  UserService._() {
    url += "users";
  }

  static UserService get instance =>
      _instance = _instance ?? UserService._();

  /*
  Future<List<User>> getUsers() async {
    var response = await http.get(url);
    print(response);
  }
   */
  
  Future register(User user) async {
    print(url);
    print(user);
    http.Response response = await http.post(url, body: user.toString());
    print(User.fromJson(jsonDecode(response.toString())));
  }
}
