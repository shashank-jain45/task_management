part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loadTasks(String userId) = LoadTasks;
  const factory TaskEvent.tasksUpdated(List<TaskEntity> tasks) = TasksUpdated;
  const factory TaskEvent.addTask(TaskEntity task) = AddTaskEvent;
  const factory TaskEvent.updateTask(TaskEntity task) = UpdateTaskEvent;
  const factory TaskEvent.deleteTask(String taskId) = DeleteTaskEvent;
  const factory TaskEvent.filterTasks(TaskFilter filter) = FilterTasks;
}

enum TaskFilter { all, completed, incomplete, low, medium, high }
