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

    await db.execute('''
    CREATE TABLE medicines (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      category TEXT NOT NULL,
      image_url TEXT NOT NULL,
      price REAL NOT NULL
    );''');

    await db.execute('''
    INSERT INTO medicines (name, category, image_url, price)
    VALUES
      ('Vitamin C 500 mg', 'vitamin', 'https://picsum.photos/256', 18000),
      ('Multivitamin Tablet', 'vitamin', 'https://picsum.photos/256', 32000),
      ('Vitamin B Complex', 'vitamin', 'https://picsum.photos/256', 25000),
      ('Amoxicillin 500 mg', 'antibiotic', 'https://picsum.photos/256', 18000),
      ('Ciprofloxacin 500 mg', 'antibiotic', 'https://picsum.photos/256', 28000),
      ('Azithromycin 500 mg', 'antibiotic', 'https://picsum.photos/256', 50000),
      ('Povidone Iodine 30 ml', 'antiseptic', 'https://picsum.photos/256', 12000),
      ('Hand Sanitizer 100 ml', 'antiseptic', 'https://picsum.photos/256', 20000),
      ('Alcohol Swab', 'antiseptic', 'https://picsum.photos/256', 3000);
  ''');
  }
}
