import 'dart:convert';

import 'user_types.dart';

class User {
  final String id;
  final String name;
  final String userName;
  final List<UserTypes> userTypes;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

//---------------------//--------------------//

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        userName: map['username'] ?? '',
        userTypes: map['user_types']?.map().toList((type) {
              return UserTypes.fromMap(type);
            }) ??
            []);
  }

//---------------------//--------------------//

  factory User.fromJson(String source) => User.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'userTypes': userTypes.map((e) => e.toMap()).toList()
    };
  }

//---------------------//--------------------//

  String toJson() => jsonEncode(toMap());
}



// {
// id: "1",
// name: "Madalyn Dibbert",
// username: "Eugenia.Heller43",
// user_types: [ ],
// }