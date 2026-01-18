import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task_management/auth/presentation/bloc/auth_bloc.dart';
import 'package:task_management/auth/presentation/pages/login_page.dart';
import 'package:task_management/tasks/presentation/bloc/task_bloc.dart';

class HomeHeader extends StatelessWidget {
  final TaskFilter currentFilter;

  const HomeHeader({super.key, required this.currentFilter});

  @override
  Widget build(BuildContext context) {
    final DateFormat headerDateFormatter = DateFormat('EEEE, d MMM');

    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF8F81FE), Color(0xFF7E73FC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headerDateFormatter.format(DateTime.now()),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "My tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.logout, color: Colors.white70, size: 20),
                onPressed: () {
                  context.read<AuthBloc>().add(const LogoutRequested());
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                },
              ),
            ],
          ),
          _buildFilterDropdown(context, currentFilter),
        ],
      ),
    );
  }

  Widget _buildFilterDropdown(BuildContext context, TaskFilter currentFilter) {
    return PopupMenuButton<TaskFilter>(
      icon: const Icon(Icons.filter_list, color: Colors.white),
      initialValue: currentFilter,
      onSelected: (TaskFilter filter) {
        context.read<TaskBloc>().add(FilterTasks(filter));
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<TaskFilter>>[
        const PopupMenuItem<TaskFilter>(
          value: TaskFilter.all,
          child: Text('All Tasks'),
        ),
        const PopupMenuItem<TaskFilter>(
          value: TaskFilter.completed,
          child: Text('Completed'),
        ),
        const PopupMenuItem<TaskFilter>(
          value: TaskFilter.incomplete,
          child: Text('Incomplete'),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<TaskFilter>(
          value: TaskFilter.high,
          child: Text('Priority: High'),
        ),
        const PopupMenuItem<TaskFilter>(
          value: TaskFilter.medium,
          child: Text('Priority: Medium'),
        ),
        const PopupMenuItem<TaskFilter>(
          value: TaskFilter.low,
          child: Text('Priority: Low'),
        ),
      ],
    );
  }
}
