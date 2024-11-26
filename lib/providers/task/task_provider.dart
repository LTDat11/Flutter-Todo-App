import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app/data/repositories/repositories.dart';
import 'package:to_do_app/providers/providers.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
