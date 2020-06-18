import 'dart:io';
import '../core/Router.dart';

Future<void> route(Router router) async {
  router.get("test", test);
}

void test(HttpRequest request) {
  print("TEST URL CALL");
  request.response.write("TEST");
}
