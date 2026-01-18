import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/auth/presentation/bloc/auth_bloc.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/presentation/add_task_screen.dart';
import 'package:task_management/tasks/presentation/bloc/task_bloc.dart';
import 'package:task_management/tasks/presentation/widgets/home_body.dart';
import 'package:task_management/tasks/presentation/widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger load if user is authenticated
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthAuthenticated) {
      context.read<TaskBloc>().add(LoadTasks(authState.user.uid));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get current user ID for navigation
    final authState = context.read<AuthBloc>().state;
    String userId = '';
    if (authState is AuthAuthenticated) {
      userId = authState.user.uid;
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: BlocConsumer<TaskBloc, TaskState>(
        listener: (context, state) {
          if (state is TaskError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          List<TaskEntity> tasks = [];
          TaskFilter currentFilter = TaskFilter.all;

          if (state is TaskLoaded) {
            tasks = state.filteredTasks;
            currentFilter = state.filter;
          }

          return Column(
            children: [
              HomeHeader(currentFilter: currentFilter),
              Expanded(
                child: state is TaskLoading
                    ? const Center(child: CircularProgressIndicator())
                    : HomeBody(tasks: tasks, userId: userId),
              ),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF6C63FF),
          elevation: 4,
          onPressed: () {
            if (userId.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AddTaskScreen(userId: userId),
                ),
              );
            }
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
