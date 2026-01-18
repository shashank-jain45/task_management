// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTasksImplCopyWith<$Res> {
  factory _$$LoadTasksImplCopyWith(
    _$LoadTasksImpl value,
    $Res Function(_$LoadTasksImpl) then,
  ) = __$$LoadTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$LoadTasksImpl>
    implements _$$LoadTasksImplCopyWith<$Res> {
  __$$LoadTasksImplCopyWithImpl(
    _$LoadTasksImpl _value,
    $Res Function(_$LoadTasksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$LoadTasksImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadTasksImpl implements LoadTasks {
  const _$LoadTasksImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'TaskEvent.loadTasks(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTasksImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTasksImplCopyWith<_$LoadTasksImpl> get copyWith =>
      __$$LoadTasksImplCopyWithImpl<_$LoadTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) {
    return loadTasks(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) {
    return loadTasks?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) {
    return loadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) {
    return loadTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(this);
    }
    return orElse();
  }
}

abstract class LoadTasks implements TaskEvent {
  const factory LoadTasks(final String userId) = _$LoadTasksImpl;

  String get userId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTasksImplCopyWith<_$LoadTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksUpdatedImplCopyWith<$Res> {
  factory _$$TasksUpdatedImplCopyWith(
    _$TasksUpdatedImpl value,
    $Res Function(_$TasksUpdatedImpl) then,
  ) = __$$TasksUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$TasksUpdatedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$TasksUpdatedImpl>
    implements _$$TasksUpdatedImplCopyWith<$Res> {
  __$$TasksUpdatedImplCopyWithImpl(
    _$TasksUpdatedImpl _value,
    $Res Function(_$TasksUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tasks = null}) {
    return _then(
      _$TasksUpdatedImpl(
        null == tasks
            ? _value._tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<TaskEntity>,
      ),
    );
  }
}

/// @nodoc

class _$TasksUpdatedImpl implements TasksUpdated {
  const _$TasksUpdatedImpl(final List<TaskEntity> tasks) : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskEvent.tasksUpdated(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksUpdatedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksUpdatedImplCopyWith<_$TasksUpdatedImpl> get copyWith =>
      __$$TasksUpdatedImplCopyWithImpl<_$TasksUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) {
    return tasksUpdated(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) {
    return tasksUpdated?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) {
    if (tasksUpdated != null) {
      return tasksUpdated(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) {
    return tasksUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) {
    return tasksUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) {
    if (tasksUpdated != null) {
      return tasksUpdated(this);
    }
    return orElse();
  }
}

abstract class TasksUpdated implements TaskEvent {
  const factory TasksUpdated(final List<TaskEntity> tasks) = _$TasksUpdatedImpl;

  List<TaskEntity> get tasks;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksUpdatedImplCopyWith<_$TasksUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskEventImplCopyWith<$Res> {
  factory _$$AddTaskEventImplCopyWith(
    _$AddTaskEventImpl value,
    $Res Function(_$AddTaskEventImpl) then,
  ) = __$$AddTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$AddTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskEventImpl>
    implements _$$AddTaskEventImplCopyWith<$Res> {
  __$$AddTaskEventImplCopyWithImpl(
    _$AddTaskEventImpl _value,
    $Res Function(_$AddTaskEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? task = null}) {
    return _then(
      _$AddTaskEventImpl(
        null == task
            ? _value.task
            : task // ignore: cast_nullable_to_non_nullable
                  as TaskEntity,
      ),
    );
  }
}

/// @nodoc

class _$AddTaskEventImpl implements AddTaskEvent {
  const _$AddTaskEventImpl(this.task);

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      __$$AddTaskEventImplCopyWithImpl<_$AddTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TaskEvent {
  const factory AddTaskEvent(final TaskEntity task) = _$AddTaskEventImpl;

  TaskEntity get task;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskEventImplCopyWith<$Res> {
  factory _$$UpdateTaskEventImplCopyWith(
    _$UpdateTaskEventImpl value,
    $Res Function(_$UpdateTaskEventImpl) then,
  ) = __$$UpdateTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$UpdateTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskEventImpl>
    implements _$$UpdateTaskEventImplCopyWith<$Res> {
  __$$UpdateTaskEventImplCopyWithImpl(
    _$UpdateTaskEventImpl _value,
    $Res Function(_$UpdateTaskEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? task = null}) {
    return _then(
      _$UpdateTaskEventImpl(
        null == task
            ? _value.task
            : task // ignore: cast_nullable_to_non_nullable
                  as TaskEntity,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTaskEventImpl implements UpdateTaskEvent {
  const _$UpdateTaskEventImpl(this.task);

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskEvent.updateTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      __$$UpdateTaskEventImplCopyWithImpl<_$UpdateTaskEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) {
    return updateTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) {
    return updateTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskEvent implements TaskEvent {
  const factory UpdateTaskEvent(final TaskEntity task) = _$UpdateTaskEventImpl;

  TaskEntity get task;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskEventImplCopyWith<$Res> {
  factory _$$DeleteTaskEventImplCopyWith(
    _$DeleteTaskEventImpl value,
    $Res Function(_$DeleteTaskEventImpl) then,
  ) = __$$DeleteTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskEventImpl>
    implements _$$DeleteTaskEventImplCopyWith<$Res> {
  __$$DeleteTaskEventImplCopyWithImpl(
    _$DeleteTaskEventImpl _value,
    $Res Function(_$DeleteTaskEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null}) {
    return _then(
      _$DeleteTaskEventImpl(
        null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteTaskEventImpl implements DeleteTaskEvent {
  const _$DeleteTaskEventImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      __$$DeleteTaskEventImplCopyWithImpl<_$DeleteTaskEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) {
    return deleteTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) {
    return deleteTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskEvent implements TaskEvent {
  const factory DeleteTaskEvent(final String taskId) = _$DeleteTaskEventImpl;

  String get taskId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTasksImplCopyWith<$Res> {
  factory _$$FilterTasksImplCopyWith(
    _$FilterTasksImpl value,
    $Res Function(_$FilterTasksImpl) then,
  ) = __$$FilterTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFilter filter});
}

/// @nodoc
class __$$FilterTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FilterTasksImpl>
    implements _$$FilterTasksImplCopyWith<$Res> {
  __$$FilterTasksImplCopyWithImpl(
    _$FilterTasksImpl _value,
    $Res Function(_$FilterTasksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filter = null}) {
    return _then(
      _$FilterTasksImpl(
        null == filter
            ? _value.filter
            : filter // ignore: cast_nullable_to_non_nullable
                  as TaskFilter,
      ),
    );
  }
}

/// @nodoc

class _$FilterTasksImpl implements FilterTasks {
  const _$FilterTasksImpl(this.filter);

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'TaskEvent.filterTasks(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTasksImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTasksImplCopyWith<_$FilterTasksImpl> get copyWith =>
      __$$FilterTasksImplCopyWithImpl<_$FilterTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadTasks,
    required TResult Function(List<TaskEntity> tasks) tasksUpdated,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskFilter filter) filterTasks,
  }) {
    return filterTasks(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadTasks,
    TResult? Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskFilter filter)? filterTasks,
  }) {
    return filterTasks?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadTasks,
    TResult Function(List<TaskEntity> tasks)? tasksUpdated,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskFilter filter)? filterTasks,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTasks value) loadTasks,
    required TResult Function(TasksUpdated value) tasksUpdated,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
    required TResult Function(FilterTasks value) filterTasks,
  }) {
    return filterTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTasks value)? loadTasks,
    TResult? Function(TasksUpdated value)? tasksUpdated,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
    TResult? Function(FilterTasks value)? filterTasks,
  }) {
    return filterTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTasks value)? loadTasks,
    TResult Function(TasksUpdated value)? tasksUpdated,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    TResult Function(FilterTasks value)? filterTasks,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(this);
    }
    return orElse();
  }
}

abstract class FilterTasks implements TaskEvent {
  const factory FilterTasks(final TaskFilter filter) = _$FilterTasksImpl;

  TaskFilter get filter;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterTasksImplCopyWith<_$FilterTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> allTasks, TaskFilter filter)
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskInitialImplCopyWith<$Res> {
  factory _$$TaskInitialImplCopyWith(
    _$TaskInitialImpl value,
    $Res Function(_$TaskInitialImpl) then,
  ) = __$$TaskInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskInitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskInitialImpl>
    implements _$$TaskInitialImplCopyWith<$Res> {
  __$$TaskInitialImplCopyWithImpl(
    _$TaskInitialImpl _value,
    $Res Function(_$TaskInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskInitialImpl extends TaskInitial {
  const _$TaskInitialImpl() : super._();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> allTasks, TaskFilter filter)
    loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskInitial extends TaskState {
  const factory TaskInitial() = _$TaskInitialImpl;
  const TaskInitial._() : super._();
}

/// @nodoc
abstract class _$$TaskLoadingImplCopyWith<$Res> {
  factory _$$TaskLoadingImplCopyWith(
    _$TaskLoadingImpl value,
    $Res Function(_$TaskLoadingImpl) then,
  ) = __$$TaskLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskLoadingImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadingImpl>
    implements _$$TaskLoadingImplCopyWith<$Res> {
  __$$TaskLoadingImplCopyWithImpl(
    _$TaskLoadingImpl _value,
    $Res Function(_$TaskLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskLoadingImpl extends TaskLoading {
  const _$TaskLoadingImpl() : super._();

  @override
  String toString() {
    return 'TaskState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> allTasks, TaskFilter filter)
    loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskLoading extends TaskState {
  const factory TaskLoading() = _$TaskLoadingImpl;
  const TaskLoading._() : super._();
}

/// @nodoc
abstract class _$$TaskLoadedImplCopyWith<$Res> {
  factory _$$TaskLoadedImplCopyWith(
    _$TaskLoadedImpl value,
    $Res Function(_$TaskLoadedImpl) then,
  ) = __$$TaskLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> allTasks, TaskFilter filter});
}

/// @nodoc
class __$$TaskLoadedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadedImpl>
    implements _$$TaskLoadedImplCopyWith<$Res> {
  __$$TaskLoadedImplCopyWithImpl(
    _$TaskLoadedImpl _value,
    $Res Function(_$TaskLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? allTasks = null, Object? filter = null}) {
    return _then(
      _$TaskLoadedImpl(
        null == allTasks
            ? _value._allTasks
            : allTasks // ignore: cast_nullable_to_non_nullable
                  as List<TaskEntity>,
        null == filter
            ? _value.filter
            : filter // ignore: cast_nullable_to_non_nullable
                  as TaskFilter,
      ),
    );
  }
}

/// @nodoc

class _$TaskLoadedImpl extends TaskLoaded {
  const _$TaskLoadedImpl(final List<TaskEntity> allTasks, this.filter)
    : _allTasks = allTasks,
      super._();

  final List<TaskEntity> _allTasks;
  @override
  List<TaskEntity> get allTasks {
    if (_allTasks is EqualUnmodifiableListView) return _allTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTasks);
  }

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'TaskState.loaded(allTasks: $allTasks, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLoadedImpl &&
            const DeepCollectionEquality().equals(other._allTasks, _allTasks) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_allTasks),
    filter,
  );

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskLoadedImplCopyWith<_$TaskLoadedImpl> get copyWith =>
      __$$TaskLoadedImplCopyWithImpl<_$TaskLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> allTasks, TaskFilter filter)
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(allTasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(allTasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allTasks, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TaskLoaded extends TaskState {
  const factory TaskLoaded(
    final List<TaskEntity> allTasks,
    final TaskFilter filter,
  ) = _$TaskLoadedImpl;
  const TaskLoaded._() : super._();

  List<TaskEntity> get allTasks;
  TaskFilter get filter;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskLoadedImplCopyWith<_$TaskLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskErrorImplCopyWith<$Res> {
  factory _$$TaskErrorImplCopyWith(
    _$TaskErrorImpl value,
    $Res Function(_$TaskErrorImpl) then,
  ) = __$$TaskErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TaskErrorImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskErrorImpl>
    implements _$$TaskErrorImplCopyWith<$Res> {
  __$$TaskErrorImplCopyWithImpl(
    _$TaskErrorImpl _value,
    $Res Function(_$TaskErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$TaskErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TaskErrorImpl extends TaskError {
  const _$TaskErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'TaskState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskErrorImplCopyWith<_$TaskErrorImpl> get copyWith =>
      __$$TaskErrorImplCopyWithImpl<_$TaskErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> allTasks, TaskFilter filter)
    loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> allTasks, TaskFilter filter)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskError extends TaskState {
  const factory TaskError(final String message) = _$TaskErrorImpl;
  const TaskError._() : super._();

  String get message;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskErrorImplCopyWith<_$TaskErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
