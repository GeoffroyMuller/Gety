import '../gety_back.dart';

@Table(name: "users")
class _User {

  @primaryKey
  int id;

  String avatar;

  String firstname;

  String lastname;

  @Column(unique: true)
  String email;

  String password;
}

class User extends ManagedObject<_User> implements _User {
  @override
  String toString() {
    return 'User{id: $id, avatar: $avatar, firstname: $firstname, lastname: $lastname, email: $email}';
  }
}