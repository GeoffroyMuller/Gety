import 'package:gety_back/controllers/user.controller.dart';

import 'gety_back.dart';

class GetyBackChannel extends ApplicationChannel {
  ManagedContext context;


  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
    var dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    var psc = PostgreSQLPersistentStore.fromConnectionInfo(
        "postgres", "vawuri*5", "localhost", 5432, "gety");

    context = ManagedContext(dataModel, psc);
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/public/*").link(() => FileController("public/"));

    router.route("/users/[:id]").link(() => UserController(context));

    return router;
  }
}