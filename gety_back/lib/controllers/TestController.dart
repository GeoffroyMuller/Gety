import 'dart:io';

import '../../core/Controller.dart';

class TestController extends Controller {

  testGet(HttpRequest request) {
    return request.response.write("THIS IS A TEST");;
  }
}