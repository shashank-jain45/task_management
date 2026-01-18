import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_management/core/error/failure.dart';
import 'package:task_management/core/usecases/usecase.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/domain/repositories/task_repository.dart';

class GetTasksUseCase
    implements UseCase<Stream<List<TaskEntity>>, GetTasksParams> {
  final TaskRepository repository;

  GetTasksUseCase(this.repository);

  @override
  Future<Either<Failure, Stream<List<TaskEntity>>>> call(
    GetTasksParams params,
  ) async {
    return await repository.getTasks(params.userId);
  }
}

class GetTasksParams extends Equatable {
  final String userId;
  const GetTasksParams({required this.userId});
  @override
  List<Object> get props => [userId];
}

class AddTaskUseCase implements UseCase<void, TaskEntity> {
  final TaskRepository repository;

  AddTaskUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(TaskEntity task) async {
    return await repository.addTask(task);
  }
}

class UpdateTaskUseCase implements UseCase<void, TaskEntity> {
  final TaskRepository repository;

  UpdateTaskUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(TaskEntity task) async {
    return await repository.updateTask(task);
  }
}

class DeleteTaskUseCase implements UseCase<void, String> {
  final TaskRepository repository;

  DeleteTaskUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(String taskId) async {
    return await repository.deleteTask(taskId);
  }
}
