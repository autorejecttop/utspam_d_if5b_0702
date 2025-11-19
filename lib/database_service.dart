import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  static const String dbName = "uts.db";

  DatabaseService._init();
  static final DatabaseService instance = DatabaseService._init();
  static Database? _database;

  factory DatabaseService() {
    return instance;
  }

  Future<Database> get database async {
    _database = await _initDatabase(dbName);
    return _database!;
  }

  Future<Database> _initDatabase(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      email TEXT NOT NULL,
      phone_number TEXT NOT NULL,
      address TEXT NOT NULL,
      username TEXT NOT NULL,
      password_hash TEXT NOT NULL
    );''');
  }
}
