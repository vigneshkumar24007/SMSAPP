import 'package:sqflite/sqflite.dart';
import 'package:sqflites/Database_helper/sqflite.dart';

class repository {
  late databaseconnection _databaseconnection;

  repository() {
    _databaseconnection = databaseconnection();
  }
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseconnection.setdatabase();
      return _database;
    }
  }

  insertData(table, data) async {
    var Connection = await _database;
    return await Connection?.insert(table, data);
  }

  readData(table, data) async {
    var Connection = await _database;
    return await Connection?.query(table);
  }

  readbysingledata(table, userid) async {
    var Connectoin = await _database;
    return await Connectoin?.query(table, where: 'id = ?', whereArgs: [userid]);
  }

  deletedata(table, deleteid) async {
    var Connection = await _database;
    return await Connection?.rawDelete(
        "delete from $table where id = $deleteid");
  }
}
