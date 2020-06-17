import 'dart:io';

class Router {

  Router._();

  static Router _instance;

  static Router get instance =>
      _instance = _instance ?? Router._();

  Map<String, Map<String, Function>> controllers;

  run(HttpRequest request) {
    String url = request.uri.toString();
    String method = request.method;

    if(controllers[method] != null && controllers[method][url] != null) {
      controllers[method][url](request);
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
    print("this.controllers[$method][$route] = $function");
    // todo : make it work
    this.controllers[method][route] = function;
    return this;
  }

}