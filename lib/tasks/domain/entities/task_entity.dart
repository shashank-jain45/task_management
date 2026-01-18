import 'package:equatable/equatable.dart';

enum TaskPriority { low, medium, high }

enum TaskStatus { incomplete, completed }

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final TaskPriority priority;
  final TaskStatus status;

  const TaskEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.status,
  });

  @override
  List<Object> get props => [
    id,
    title,
    description,
    dueDate,
    priority,
    status,
  ];
}
