import 'package:gety_front/config/parameters.dart';
import 'package:gety_front/models/User.dart';
import 'package:http/http.dart' as http;


abstract class AbstractService<T> {
  String url = apiUrl;


}