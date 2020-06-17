import 'dart:io';

import 'Controller.dart';

class Router {

  Router._();

  static Router _instance;

  static Router get instance =>
      _instance = _instance ?? Router._();

  Map<String, Map<String, Controller>> controllers;

  run(HttpRequest request) {
    String url = request.uri.toString();
    print(url);
    switch(request.method) {
      case 'GET':
        print('GET');
        break;
      case 'POST':
        print('POST');
        break;
      case 'PUT':
        print('PUT');
        break;
      case 'DELETE':
        print('DELETE');
        break;
    }
  }

  get(String route, Controller controller) {
    this.controllers["GET"][route] = controller;
  }

  post(String route, Controller controller) {
    this.controllers["POST"][route] = controller;
  }

  put(String route, Controller controller) {
    this.controllers["PUT"][route] = controller;
  }

  delete(String route, Controller controller) {
    this.controllers["DELETE"][route] = controller;
  }

}