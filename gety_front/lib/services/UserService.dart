import 'package:gety_front/models/User.dart';
import 'package:gety_front/services/AbstractService.dart';
import 'package:http/http.dart' as http;

class UserService extends AbstractService {
  static UserService _instance;

  UserService._() {
    url += "users";
  }

  static UserService get getInstance =>
      _instance = _instance ?? UserService._();

  Future<List<User>> getUsers() async {
    var response = await http.get(url);
  }
}
