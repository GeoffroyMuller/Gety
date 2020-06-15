class User {
  int id;

  String avatar;

  String firstname;

  String lastname;

  String email;

  String password;

  String toString() {
    return 'User{id: $id, avatar: $avatar, firstname: $firstname, lastname: $lastname, email: $email}';
  }

  User.fromJson(Map<String, dynamic> json):
        id = json['id'],
        firstname = json['firstname'],
        lastname = json['lastname'],
        email = json['email'],
        avatar = json['avatar'];
}
