import 'package:dartz/dartz.dart';
import 'package:task_management/core/error/exception.dart';
import 'package:task_management/core/error/failure.dart';
import 'package:task_management/core/global_context.dart';
import 'package:task_management/injection_container.dart';
import 'package:task_management/tasks/data/datasources/task_remote_data_source.dart';
import 'package:task_management/tasks/data/models/task_model.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteDataSource remoteDataSource;

  TaskRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Stream<List<TaskEntity>>>> getTasks(
    String userId,
  ) async {
    try {
      final stream = remoteDataSource.getTasks(userId);
      return Right(
        stream.map((models) => models.map((m) => m.toEntity()).toList()),
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> addTask(TaskEntity task) async {
    try {
      await remoteDataSource.addTask(TaskModel.fromEntity(task));
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> updateTask(TaskEntity task) async {
    try {
      await remoteDataSource.updateTask(TaskModel.fromEntity(task));
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTask(String taskId) async {
    try {
      await remoteDataSource.deleteTask(
        taskId
      );
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
