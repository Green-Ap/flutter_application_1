import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/data/data.dart';
import '/providers/providers.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
