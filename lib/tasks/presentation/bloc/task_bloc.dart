import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/domain/usecases/task_usecases.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTasksUseCase getTasksUseCase;
  final AddTaskUseCase addTaskUseCase;
  final UpdateTaskUseCase updateTaskUseCase;
  final DeleteTaskUseCase deleteTaskUseCase;
  StreamSubscription? _tasksSubscription;

  TaskBloc({
    required this.getTasksUseCase,
    required this.addTaskUseCase,
    required this.updateTaskUseCase,
    required this.deleteTaskUseCase,
  }) : super(const TaskInitial()) {
    on<LoadTasks>(_onLoadTasks);
    on<TasksUpdated>(_onTasksUpdated);
    on<AddTaskEvent>(_onAddTask);
    on<UpdateTaskEvent>(_onUpdateTask);
    on<DeleteTaskEvent>(_onDeleteTask);
    on<FilterTasks>(_onFilterTasks);
  }

  Future<void> _onLoadTasks(LoadTasks event, Emitter<TaskState> emit) async {
    emit(const TaskLoading());
    final result = await getTasksUseCase(GetTasksParams(userId: event.userId));
    result.fold((failure) => emit(TaskError(failure.message)), (stream) {
      _tasksSubscription?.cancel();
      _tasksSubscription = stream.listen((tasks) {
        add(TasksUpdated(tasks));
      });
    });
  }

  void _onTasksUpdated(TasksUpdated event, Emitter<TaskState> emit) {
    TaskFilter filter = TaskFilter.all;
    if (state is TaskLoaded) {
      filter = (state as TaskLoaded).filter;
    }
    emit(TaskLoaded(event.tasks, filter));
  }

  Future<void> _onAddTask(AddTaskEvent event, Emitter<TaskState> emit) async {
    final result = await addTaskUseCase(event.task);
    result.fold((failure) => emit(TaskError(failure.message)), (_) => null);
  }

  Future<void> _onUpdateTask(
    UpdateTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    final result = await updateTaskUseCase(event.task);
    result.fold((failure) => emit(TaskError(failure.message)), (_) => null);
  }

  Future<void> _onDeleteTask(
    DeleteTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    final result = await deleteTaskUseCase(event.taskId);
    result.fold((failure) => emit(TaskError(failure.message)), (_) => null);
  }

  void _onFilterTasks(FilterTasks event, Emitter<TaskState> emit) {
    if (state is TaskLoaded) {
      final loadedState = state as TaskLoaded;
      emit(TaskLoaded(loadedState.allTasks, event.filter));
    }
  }

  @override
  Future<void> close() {
    _tasksSubscription?.cancel();
    return super.close();
  }
}
