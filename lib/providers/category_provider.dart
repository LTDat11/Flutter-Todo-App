import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app/utils/task_categories.dart';

final categoryProvider = StateProvider<TaskCategories>((ref) {
  return TaskCategories.others;
});
