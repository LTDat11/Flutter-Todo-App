import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_app/utils/db_keys.dart';

import '../models/task.dart';

class TaskDatasource {
  static final TaskDatasource _instance = TaskDatasource._();

  factory TaskDatasource() => _instance;

  TaskDatasource._() {
    _initDB();
  }

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DBkeys.dbName);
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${DBkeys.dbTable}(
        ${DBkeys.idColumn} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${DBkeys.titleColumn} TEXT,
        ${DBkeys.noteColumn} TEXT,
        ${DBkeys.categoryColumn} TEXT,
        ${DBkeys.timeColumn} TEXT,
        ${DBkeys.dateColumn} TEXT,
        ${DBkeys.isCompletedColumn} INTEGER
      )
    ''');
  }

  Future<int> addTask(Task task) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.insert(
          DBkeys.dbTable,
          task.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      },
    );
  }

  Future<int> updateTask(Task task) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.update(
          DBkeys.dbTable,
          task.toJson(),
          where: 'id = ?',
          whereArgs: [task.id],
        );
      },
    );
  }

  Future<int> deleteTask(Task task) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.delete(
          DBkeys.dbTable,
          where: 'id = ?',
          whereArgs: [task.id],
        );
      },
    );
  }

  Future<List<Task>> getAllTasks() async {
    final db = await database;
    final List<Map<String, dynamic>> data = await db.query(
      DBkeys.dbTable,
      orderBy: 'id DESC',
    );
    return List.generate(
      data.length,
      (index) => Task.fromJson(data[index]),
    );
  }
}
