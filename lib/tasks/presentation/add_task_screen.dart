import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task_management/tasks/domain/entities/task_entity.dart';
import 'package:task_management/tasks/presentation/bloc/task_bloc.dart';
import 'package:uuid/uuid.dart';

class AddTaskScreen extends StatefulWidget {
  final TaskEntity? task;
  final String userId;

  const AddTaskScreen({super.key, this.task, required this.userId});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;
  late DateTime _dueDate;
  late TaskPriority _priority;
  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');

  @override
  void initState() {
    super.initState();
    _title = widget.task?.title ?? '';
    _description = widget.task?.description ?? '';
    _dueDate = widget.task?.dueDate ?? DateTime.now();
    _priority = widget.task?.priority ?? TaskPriority.low;
  }

  _handleDatePicker() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date != null && date != _dueDate) {
      setState(() {
        _dueDate = date;
      });
    }
  }

  _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final task = TaskEntity(
        id: widget.task?.id ?? const Uuid().v4(),
        title: _title,
        description: _description,
        dueDate: _dueDate,
        priority: _priority,
        status: widget.task?.status ?? TaskStatus.incomplete,
        userId: widget.userId,
      );

      if (widget.task == null) {
        context.read<TaskBloc>().add(AddTaskEvent(task));
      } else {
        context.read<TaskBloc>().add(UpdateTaskEvent(task));
      }

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.task == null ? 'Add Task' : 'Update Task'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _title,
                  style: const TextStyle(fontSize: 18.0),
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (input) => input!.trim().isEmpty
                      ? 'Please enter a task title'
                      : null,
                  onSaved: (input) => _title = input!,
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  initialValue: _description,
                  style: const TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onSaved: (input) => _description = input ?? '',
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    readOnly: true,
                    controller: TextEditingController(
                      text: _dateFormatter.format(_dueDate),
                    ),
                    onTap: _handleDatePicker,
                    style: const TextStyle(fontSize: 18.0),
                    decoration: const InputDecoration(
                      labelText: 'Due Date',
                      labelStyle: TextStyle(fontSize: 18.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                DropdownButtonFormField<TaskPriority>(
                  isDense: true,
                  icon: const Icon(Icons.arrow_drop_down_circle),
                  iconSize: 22.0,
                  iconEnabledColor: Theme.of(context).primaryColor,
                  items: TaskPriority.values.map((TaskPriority priority) {
                    return DropdownMenuItem(
                      value: priority,
                      child: Text(
                        priority.name.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    );
                  }).toList(),
                  style: const TextStyle(fontSize: 18.0),
                  decoration: const InputDecoration(
                    labelText: 'Priority',
                    labelStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _priority = value!;
                    });
                  },
                  initialValue: _priority,
                ),
                const SizedBox(height: 40.0),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextButton(
                    onPressed: _submit,
                    child: Text(
                      widget.task == null ? 'Add' : 'Update',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                if (widget.task != null)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 60.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        context.read<TaskBloc>().add(
                          DeleteTaskEvent(widget.task!.id),
                        );
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Delete Task',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
