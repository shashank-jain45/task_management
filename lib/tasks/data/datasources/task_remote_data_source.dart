import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task_management/core/global_context.dart';
import 'package:task_management/injection_container.dart';
import 'package:task_management/tasks/data/models/task_model.dart';
import 'package:task_management/core/error/exception.dart';

abstract class TaskRemoteDataSource {
  Stream<List<TaskModel>> getTasks(String userId);
  Future<void> addTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(String taskId);
}

class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  final FirebaseFirestore firestore;

  TaskRemoteDataSourceImpl({required this.firestore});

  @override
  Stream<List<TaskModel>> getTasks(String userId) {
    return firestore
        .collection('users')
        .doc(userId)
        .collection('tasks')
        .orderBy('dueDate')
        .snapshots()
        .map((snapshot) {
          return snapshot.docs
              .map((doc) => TaskModel.fromFirestore(doc))
              .toList();
        });
  }

  @override
  Future<void> addTask(TaskModel task) async {
    try {
      await firestore
          .collection('users')
          .doc(sl<GlobalContext>().userEntity!.uid)
          .collection('tasks')
          .doc(task.id)
          .set(task.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    try {
      await firestore
          .collection('users')
          .doc(sl<GlobalContext>().userEntity!.uid)
          .collection('tasks')
          .doc(task.id)
          .update(task.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> deleteTask(String taskId) async {
    try {
      await firestore
          .collection('users')
          .doc(sl<GlobalContext>().userEntity!.uid)
          .collection('tasks')
          .doc(taskId)
          .delete();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
