import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class databaseconnection {
  Future<Database> setdatabase() async {
    var Directory = await getApplicationCacheDirectory();
    var path = join(Directory.path, 'db_Crud');
    var databse =
        await openDatabase(path, version: 1, onCreate: _Createdatabase);
    return databse;
  }

  Future<void> _Createdatabase(Database database, int version) async {
    String querry =
        """ create TABLE users(id integer PRIMARY KEY,name TEXT,contact TEXT,desription TEXT)""";
    await database.execute(querry);
  }
}
