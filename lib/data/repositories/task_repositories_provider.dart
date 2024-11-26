import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app/data/repositories/repositories.dart';

import '../datasource/task_datasource_provider.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoriesImpl(datasource);
});
