import 'dart:io';

class Router {

  Router._() {
    controllers = Map<String, Map<String, Function>>();
  }

  static Router _instance;

  static Router get instance =>
      _instance = _instance ?? Router._();

  Map<String, Map<String, Function>> controllers;

  run(HttpRequest request) {
    String url = request.uri.toString();
    String method = request.method;


    // todo : update it, run into all the controllers[method] list and parse every url
    //delete first "/"
    url = url.substring(1);
    if(controllers[method] != null && controllers[method][url] != null) {
      controllers[method][url](request);
    } else if(controllers[method] != null && controllers[method][url.substring(0, url.length - 1)] != null) {
      //if we add "/" at the end
      controllers[method][url.substring(0, url.length - 1)](request);
    }
  }

  /**
   * parse a route and if match, set the request with "path" params
   * and run the attached controller;
   *
   * @return bool pathMatched
   */
  bool parse() {
    throw UnimplementedError();
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
    if(controllers[method] == null) {
      controllers[method] = Map();
    }
    controllers[method][route] = function;
    return this;
  }

}