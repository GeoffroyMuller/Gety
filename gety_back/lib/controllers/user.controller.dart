import 'package:gety_back/models/user.class.dart';

import '../gety_back.dart';

class UserController extends ResourceController {
  UserController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAll() async {
    final query = Query<User>(context);
    final users = await query.fetch();

    return Response.ok(users);
  }

  @Operation.get('id')
  Future<Response> getById(@Bind.path('id') int id) async {
    final query = Query<User>(context)..where((u) => u.id).equalTo(id);

    final user = await query.fetchOne();

    if (user == null) {
      return Response.notFound();
    }
    return Response.ok(user);
  }

  @Operation.post()
  Future<Response> create(@Bind.body(ignore: ["id"]) User user) async {
    print(user);
    final query = Query<User>(context)..values = user;
    //final inserted = await query.insert();
    //return Response.ok(inserted);
    user.id = 1;
    return Response.ok(user);
  }
}
