import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/favorites.dart';

class DbHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await initDb();
    return _db!;
  }

  initDb() async {
    var dbFolder = await getDatabasesPath();
    String path = join(dbFolder, "Favorite.db");
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    return await db.execute(
      "CREATE TABLE Favorite (id INTEGER PRIMARY KEY, name TEXT, image TEXT, pokeId INTEGER, types TEXT, url TEXT )",
    );
  }

  Future<List<Favorite>> getFavorite() async {
    var dbClient = await db;
    var result = await dbClient.query("Favorite", orderBy: "name");
    return result.map((data) => Favorite.fromMap(data)).toList();
  }

  //GET IF DATA MATCH
  Future<bool> getFavoriteMatch(pokeId) async {
    var dbClient = await db;
    try {
      var result = await dbClient
          .query("Favorite", where: "pokeId=?", whereArgs: [pokeId]);

      if (result.isEmpty) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  Future<int> insertFavorite(Favorite favorite) async {
    var dbClient = await db;
    try {
      return await dbClient.insert("Favorite", favorite.toMap(),
          conflictAlgorithm: ConflictAlgorithm.fail);
    } catch (e) {
      return 0;
    }
  }

  Future<int> removeFavorite(int pokeId) async {
    var dbClient = await db;
    try {
      return await dbClient
          .delete("Favorite", where: "pokeId=?", whereArgs: [pokeId]);
    } catch (e) {
      return 0;
    }
  }
}
