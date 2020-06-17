import 'dart:io';
import '../core/Controller.dart';
import '../core/Router.dart';
import 'controllers/TestController.dart';

Future<void> route(Router router) async {
  router.get("test");
}