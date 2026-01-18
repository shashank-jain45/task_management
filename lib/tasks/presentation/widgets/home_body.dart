import 'package:flutter/material.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/presentation/widgets/task_list_item.dart';

class HomeBody extends StatelessWidget {
  final List<TaskEntity> tasks;

  const HomeBody({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return const Center(child: Text("No tasks found"));
    }

    final groupedTasks = _groupTasks(tasks);
    final sortedKeys = groupedTasks.keys.toList();
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: sortedKeys.length,
      itemBuilder: (context, index) {
        final key = sortedKeys[index];
        final sectionTasks = groupedTasks[key] ?? [];
        if (sectionTasks.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                key,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            ...sectionTasks.map((task) => TaskListItem(task: task)),
          ],
        );
      },
    );
  }

  Map<String, List<TaskEntity>> _groupTasks(List<TaskEntity> tasks) {
    final grouped = <String, List<TaskEntity>>{};
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));
    final nextWeek = today.add(const Duration(days: 7));

    for (var task in tasks) {
      final taskDate = DateTime(
        task.dueDate.year,
        task.dueDate.month,
        task.dueDate.day,
      );

      String key;
      if (taskDate.isAtSameMomentAs(today)) {
        key = 'Today';
      } else if (taskDate.isAtSameMomentAs(tomorrow)) {
        key = 'Tomorrow';
      } else if (taskDate.isAfter(today) && taskDate.isBefore(nextWeek)) {
        key = 'This Week';
      } else if (taskDate.isBefore(today)) {
        key = 'Overdue';
      } else {
        key = 'Later';
      }

      grouped.putIfAbsent(key, () => []).add(task);
    }

    final ordered = <String, List<TaskEntity>>{};
    if (grouped.containsKey('Overdue')) {
      ordered['Overdue'] = grouped['Overdue']!;
    }
    if (grouped.containsKey('Today')) {
      ordered['Today'] = grouped['Today']!;
    }
    if (grouped.containsKey('Tomorrow')) {
      ordered['Tomorrow'] = grouped['Tomorrow']!;
    }
    if (grouped.containsKey('This Week')) {
      ordered['This Week'] = grouped['This Week']!;
    }
    if (grouped.containsKey('Later')) {
      ordered['Later'] = grouped['Later']!;
    }

    return ordered;
  }
}
