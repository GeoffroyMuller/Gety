import 'dart:io';

import '../core/Router.dart';
import '../lib/route.dart';

Future<void> main() async {
  var server = await HttpServer.bind("localhost", 8888);
  await route(Router.instance);
  await for (var request in server) {
    Router.instance.run(request);
    request.response.close();
  }
}