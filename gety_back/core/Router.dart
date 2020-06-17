import 'dart:io';

import 'Controller.dart';

class Router {

  Router._();

  static Router _instance;

  static Router get instance =>
      _instance = _instance ?? Router._();

  Map<String, Map<String, Function>> controllers;

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

  Router get(String route, Function function) {
    return _addRoute(route, function, "GET");
  }

  Router post(String route, Function function) {
    return _addRoute(route, function, "POST");
  }

  Router put(String route, Function function) {
    return _addRoute(route, function, "PUT");
  }

  Router delete(String route, Function function) {
    return _addRoute(route, function, "DELETE");
  }

  Router _addRoute(String route, Function function, String method) {
    this.controllers[method][route] = function;
    return this;
  }

}