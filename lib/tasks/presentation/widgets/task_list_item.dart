import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/presentation/add_task_screen.dart';
import 'package:task_management/tasks/presentation/bloc/task_bloc.dart';

class TaskListItem extends StatelessWidget {
  final TaskEntity task;
  final String userId;

  const TaskListItem({super.key, required this.task, required this.userId});

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormatter = DateFormat('MMM dd, yyyy');

    // Determine Color based on priority
    Color chipColor;
    String chipText;

    switch (task.priority) {
      case TaskPriority.high:
        chipColor = const Color(0xFFFF8A65); // Orange/Red
        chipText = "High";
        break;
      case TaskPriority.medium:
        chipColor = const Color(0xFF9FA8DA); // Indigo/Purple
        chipText = "Medium";
        break;
      case TaskPriority.low:
        chipColor = const Color(0xFFFFB74D); // Orange/Yellow
        chipText = "Low";
        break;
    }

    return Dismissible(
      key: Key(task.id),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) {
        context.read<TaskBloc>().add(DeleteTaskEvent(task.id));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AddTaskScreen(task: task, userId: userId),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      final newStatus = task.status == TaskStatus.completed
                          ? TaskStatus.incomplete
                          : TaskStatus.completed;

                      final updated = TaskEntity(
                        id: task.id,
                        title: task.title,
                        description: task.description,
                        dueDate: task.dueDate,
                        priority: task.priority,
                        status: newStatus,
                        userId: task.userId,
                      );
                      context.read<TaskBloc>().add(UpdateTaskEvent(updated));
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: task.status == TaskStatus.completed
                              ? const Color(0xFF6C63FF)
                              : Colors.grey.shade400,
                          width: 2,
                        ),
                        color: task.status == TaskStatus.completed
                            ? const Color(0xFF6C63FF)
                            : Colors.transparent,
                      ),
                      child: task.status == TaskStatus.completed
                          ? const Icon(
                              Icons.check,
                              size: 16,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          task.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: task.status == TaskStatus.completed
                                ? TextDecoration.lineThrough
                                : null,
                            color: task.status == TaskStatus.completed
                                ? Colors.grey
                                : Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          dateFormatter.format(task.dueDate),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: chipColor.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      chipText.toUpperCase(),
                      style: TextStyle(
                        color: chipColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
