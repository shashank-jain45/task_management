import 'package:dartz/dartz.dart';
import 'package:task_management/core/error/failure.dart';
import 'package:task_management/core/usecases/usecase.dart';
import 'package:task_management/auth/domain/repositories/auth_repository.dart';

class LogoutUseCase implements UseCase<void, NoParams> {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await repository.logout();
  }
}
