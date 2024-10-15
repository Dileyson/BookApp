import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:myapp/domain/model/user.dart';

class UserDataSource {
  Future<List<User>> getUsers() async {
    final String response = await rootBundle.loadString('assets/users.json');
    final data = await json.decode(response);
    return (data as List).map((e) => User.fromJson(e)).toList();
  }
}
