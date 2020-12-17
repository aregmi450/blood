import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBManager {
  Database _database;

  Future openDb() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), "user.db"),
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute("CREATE TABLE user(bloodgroup, PRIMARY KEY)")
      }
      )
  }
}

class User {
  String email;
  String password;
  String name;
  String gender;
  String location;
  int phoneno;
  String bloodgroup;

  User(
    @required this.email,
    @required this.password,
    @required this.name,
    @required this.gender,
    @required this.location,
    @required this.bloodgroup,
    @required this.phoneno,
  );

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'gender': gender,
      'location': location,
      'phoneno': phoneno,
      'bloodgroup': bloodgroup
    };
  }
}
