import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskModel extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final String priority; // Store enum as String
  final bool isCompleted; // Store status as bool for simplicity in JSON

  const TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.isCompleted,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

  factory TaskModel.fromEntity(TaskEntity entity) {
    return TaskModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      dueDate: entity.dueDate,
      priority: entity.priority.name,
      isCompleted: entity.status == TaskStatus.completed,
    );
  }

  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      title: title,
      description: description,
      dueDate: dueDate,
      priority: TaskPriority.values.firstWhere(
        (e) => e.name == priority,
        orElse: () => TaskPriority.medium,
      ),
      status: isCompleted ? TaskStatus.completed : TaskStatus.incomplete,
    );
  }

  factory TaskModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TaskModel.fromJson(data).copyWith(id: doc.id);
  }

  TaskModel copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? dueDate,
    String? priority,
    bool? isCompleted,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      priority: priority ?? this.priority,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    dueDate,
    priority,
    isCompleted,
  ];
}
