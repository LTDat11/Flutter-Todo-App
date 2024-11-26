import 'package:to_do_app/data/data.dart';

class TaskRepositoriesImpl implements TaskRepository {
  final TaskDatasource _datasource;

  TaskRepositoriesImpl(this._datasource);

  @override
  Future<void> createTask(Task task) async {
    try {
      await _datasource.addTask(task);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteTask(Task task) async {
    try {
      await _datasource.deleteTask(task);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<Task>> getAllTasks() async {
    try {
      return await _datasource.getAllTasks();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateTask(Task task) async {
    try {
      await _datasource.updateTask(task);
    } catch (e) {
      throw Exception(e);
    }
  }
}
