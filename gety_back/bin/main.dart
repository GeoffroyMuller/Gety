import 'dart:io';

import '../core/Router.dart';
import '../lib/route.dart';

Future<void> main() async {
  var server = await HttpServer.bind("localhost", 8888);

  await for (var request in server) {
    await route(Router.instance);
    Router.instance.run(request);
    request.response.write("Hello world");
    request.response.close();
  }
}