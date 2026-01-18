import 'package:dartz/dartz.dart';
import 'package:task_management/core/error/failure.dart';
import 'package:task_management/core/usecases/usecase.dart';
import 'package:task_management/auth/domain/repositories/auth_repository.dart';
import 'package:task_management/auth/domain/entities/user_entity.dart';

class GetCurrentUserUseCase implements UseCase<UserEntity?, NoParams> {
  final AuthRepository repository;

  GetCurrentUserUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity?>> call(NoParams params) async {
    return await repository.getCurrentUser();
  }
}
