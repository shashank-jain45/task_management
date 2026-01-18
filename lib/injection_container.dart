import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:task_management/auth/data/datasources/auth_remote_data_source.dart';
import 'package:task_management/auth/data/repositories/auth_repository_impl.dart';
import 'package:task_management/auth/domain/repositories/auth_repository.dart';
import 'package:task_management/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:task_management/auth/domain/usecases/login_usecase.dart';
import 'package:task_management/auth/domain/usecases/logout_usecase.dart';
import 'package:task_management/auth/domain/usecases/register_usecase.dart';
import 'package:task_management/auth/presentation/bloc/auth_bloc.dart';
import 'package:task_management/core/global_context.dart';
import 'package:task_management/tasks/data/datasources/task_remote_data_source.dart';
import 'package:task_management/tasks/data/repositories/task_repository_impl.dart';
import 'package:task_management/tasks/domain/repositories/task_repository.dart';
import 'package:task_management/tasks/domain/usecases/task_usecases.dart';
import 'package:task_management/tasks/presentation/bloc/task_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton(GlobalContext());

  // Features - Auth
  // Bloc
  sl.registerFactory(
    () => AuthBloc(
      loginUseCase: sl(),
      registerUseCase: sl(),
      logoutUseCase: sl(),
      getCurrentUserUseCase: sl(),
    ),
  );
  // Use cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => RegisterUseCase(sl()));
  sl.registerLazySingleton(() => LogoutUseCase(sl()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(firebaseAuth: sl()),
  );

  // Features - Task
  // Bloc
  sl.registerFactory(
    () => TaskBloc(
      getTasksUseCase: sl(),
      addTaskUseCase: sl(),
      updateTaskUseCase: sl(),
      deleteTaskUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetTasksUseCase(sl()));
  sl.registerLazySingleton(() => AddTaskUseCase(sl()));
  sl.registerLazySingleton(() => UpdateTaskUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTaskUseCase(sl()));

  // Repository
  sl.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<TaskRemoteDataSource>(
    () => TaskRemoteDataSourceImpl(firestore: sl()),
  );

  // External
  final firebaseAuth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  sl.registerLazySingleton(() => firebaseAuth);
  sl.registerLazySingleton(() => firestore);
}
