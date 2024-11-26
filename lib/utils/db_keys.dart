import 'package:flutter/material.dart';
import 'package:to_do_app/utils/task_keys.dart';

@immutable
class DBkeys {
  DBkeys._();

  static const String dbName = 'tasks.db';
  static const String dbTable = 'tasks';
  static const String idColumn = TaskKeys.id;
  static const String titleColumn = TaskKeys.title;
  static const String noteColumn = TaskKeys.note;
  static const String categoryColumn = TaskKeys.category;
  static const String timeColumn = TaskKeys.time;
  static const String dateColumn = TaskKeys.date;
  static const String isCompletedColumn = TaskKeys.isCompleted;
}
