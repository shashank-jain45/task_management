import 'package:dartz/dartz.dart';
import 'package:task_management/core/error/failure.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';

abstract class TaskRepository {
  Future<Either<Failure, Stream<List<TaskEntity>>>> getTasks(String userId);
  Future<Either<Failure, void>> addTask(TaskEntity task);
  Future<Either<Failure, void>> updateTask(TaskEntity task);
  Future<Either<Failure, void>> deleteTask(String taskId);
}
