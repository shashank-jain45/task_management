import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_management/core/error/failure.dart';

// Abstract class representing a use case
// Output is the return type of the use case (Right side of Either)
// Params is the parameter type passed to the use case
abstract class UseCase<Output, Params> {
  Future<Either<Failure, Output>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
