class Task {
  final int id;
  final String title;
  final DateTime date;
  final String priority;
  final int status; // 0 - Incomplete, 1 - Complete

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.priority,
    required this.status,
  });
}
