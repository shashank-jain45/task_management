part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();
  const factory TaskState.initial() = TaskInitial;
  const factory TaskState.loading() = TaskLoading;
  const factory TaskState.loaded(List<TaskEntity> allTasks, TaskFilter filter) =
      TaskLoaded;
  const factory TaskState.error(String message) = TaskError;
}

extension TaskLoadedX on TaskLoaded {
  List<TaskEntity> get filteredTasks {
    switch (filter) {
      case TaskFilter.completed:
        return allTasks.where((t) => t.status == TaskStatus.completed).toList();
      case TaskFilter.incomplete:
        return allTasks
            .where((t) => t.status == TaskStatus.incomplete)
            .toList();
      case TaskFilter.high:
        return allTasks.where((t) => t.priority == TaskPriority.high).toList();
      case TaskFilter.medium:
        return allTasks
            .where((t) => t.priority == TaskPriority.medium)
            .toList();
      case TaskFilter.low:
        return allTasks.where((t) => t.priority == TaskPriority.low).toList();
      default:
        return allTasks;
    }
  }
}
