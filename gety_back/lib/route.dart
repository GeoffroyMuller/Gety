import 'dart:io';
import '../core/Controller.dart';
import '../core/Router.dart';

Future<void> route(Router router) async {

  router.get("test", (HttpRequest request) => {
      request.response.write("TEST")
  });

}