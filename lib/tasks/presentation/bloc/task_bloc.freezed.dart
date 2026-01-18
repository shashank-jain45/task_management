// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent()';
}


}

/// @nodoc
class $TaskEventCopyWith<$Res>  {
$TaskEventCopyWith(TaskEvent _, $Res Function(TaskEvent) __);
}


/// Adds pattern-matching-related methods to [TaskEvent].
extension TaskEventPatterns on TaskEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadTasks value)?  loadTasks,TResult Function( TasksUpdated value)?  tasksUpdated,TResult Function( AddTaskEvent value)?  addTask,TResult Function( UpdateTaskEvent value)?  updateTask,TResult Function( DeleteTaskEvent value)?  deleteTask,TResult Function( FilterTasks value)?  filterTasks,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks(_that);case TasksUpdated() when tasksUpdated != null:
return tasksUpdated(_that);case AddTaskEvent() when addTask != null:
return addTask(_that);case UpdateTaskEvent() when updateTask != null:
return updateTask(_that);case DeleteTaskEvent() when deleteTask != null:
return deleteTask(_that);case FilterTasks() when filterTasks != null:
return filterTasks(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadTasks value)  loadTasks,required TResult Function( TasksUpdated value)  tasksUpdated,required TResult Function( AddTaskEvent value)  addTask,required TResult Function( UpdateTaskEvent value)  updateTask,required TResult Function( DeleteTaskEvent value)  deleteTask,required TResult Function( FilterTasks value)  filterTasks,}){
final _that = this;
switch (_that) {
case LoadTasks():
return loadTasks(_that);case TasksUpdated():
return tasksUpdated(_that);case AddTaskEvent():
return addTask(_that);case UpdateTaskEvent():
return updateTask(_that);case DeleteTaskEvent():
return deleteTask(_that);case FilterTasks():
return filterTasks(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadTasks value)?  loadTasks,TResult? Function( TasksUpdated value)?  tasksUpdated,TResult? Function( AddTaskEvent value)?  addTask,TResult? Function( UpdateTaskEvent value)?  updateTask,TResult? Function( DeleteTaskEvent value)?  deleteTask,TResult? Function( FilterTasks value)?  filterTasks,}){
final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks(_that);case TasksUpdated() when tasksUpdated != null:
return tasksUpdated(_that);case AddTaskEvent() when addTask != null:
return addTask(_that);case UpdateTaskEvent() when updateTask != null:
return updateTask(_that);case DeleteTaskEvent() when deleteTask != null:
return deleteTask(_that);case FilterTasks() when filterTasks != null:
return filterTasks(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  loadTasks,TResult Function( List<TaskEntity> tasks)?  tasksUpdated,TResult Function( TaskEntity task)?  addTask,TResult Function( TaskEntity task)?  updateTask,TResult Function( String taskId)?  deleteTask,TResult Function( TaskFilter filter)?  filterTasks,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks(_that.userId);case TasksUpdated() when tasksUpdated != null:
return tasksUpdated(_that.tasks);case AddTaskEvent() when addTask != null:
return addTask(_that.task);case UpdateTaskEvent() when updateTask != null:
return updateTask(_that.task);case DeleteTaskEvent() when deleteTask != null:
return deleteTask(_that.taskId);case FilterTasks() when filterTasks != null:
return filterTasks(_that.filter);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  loadTasks,required TResult Function( List<TaskEntity> tasks)  tasksUpdated,required TResult Function( TaskEntity task)  addTask,required TResult Function( TaskEntity task)  updateTask,required TResult Function( String taskId)  deleteTask,required TResult Function( TaskFilter filter)  filterTasks,}) {final _that = this;
switch (_that) {
case LoadTasks():
return loadTasks(_that.userId);case TasksUpdated():
return tasksUpdated(_that.tasks);case AddTaskEvent():
return addTask(_that.task);case UpdateTaskEvent():
return updateTask(_that.task);case DeleteTaskEvent():
return deleteTask(_that.taskId);case FilterTasks():
return filterTasks(_that.filter);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  loadTasks,TResult? Function( List<TaskEntity> tasks)?  tasksUpdated,TResult? Function( TaskEntity task)?  addTask,TResult? Function( TaskEntity task)?  updateTask,TResult? Function( String taskId)?  deleteTask,TResult? Function( TaskFilter filter)?  filterTasks,}) {final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks(_that.userId);case TasksUpdated() when tasksUpdated != null:
return tasksUpdated(_that.tasks);case AddTaskEvent() when addTask != null:
return addTask(_that.task);case UpdateTaskEvent() when updateTask != null:
return updateTask(_that.task);case DeleteTaskEvent() when deleteTask != null:
return deleteTask(_that.taskId);case FilterTasks() when filterTasks != null:
return filterTasks(_that.filter);case _:
  return null;

}
}

}

/// @nodoc


class LoadTasks implements TaskEvent {
  const LoadTasks(this.userId);
  

 final  String userId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadTasksCopyWith<LoadTasks> get copyWith => _$LoadTasksCopyWithImpl<LoadTasks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTasks&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'TaskEvent.loadTasks(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadTasksCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $LoadTasksCopyWith(LoadTasks value, $Res Function(LoadTasks) _then) = _$LoadTasksCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$LoadTasksCopyWithImpl<$Res>
    implements $LoadTasksCopyWith<$Res> {
  _$LoadTasksCopyWithImpl(this._self, this._then);

  final LoadTasks _self;
  final $Res Function(LoadTasks) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadTasks(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TasksUpdated implements TaskEvent {
  const TasksUpdated(final  List<TaskEntity> tasks): _tasks = tasks;
  

 final  List<TaskEntity> _tasks;
 List<TaskEntity> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksUpdatedCopyWith<TasksUpdated> get copyWith => _$TasksUpdatedCopyWithImpl<TasksUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksUpdated&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'TaskEvent.tasksUpdated(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $TasksUpdatedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $TasksUpdatedCopyWith(TasksUpdated value, $Res Function(TasksUpdated) _then) = _$TasksUpdatedCopyWithImpl;
@useResult
$Res call({
 List<TaskEntity> tasks
});




}
/// @nodoc
class _$TasksUpdatedCopyWithImpl<$Res>
    implements $TasksUpdatedCopyWith<$Res> {
  _$TasksUpdatedCopyWithImpl(this._self, this._then);

  final TasksUpdated _self;
  final $Res Function(TasksUpdated) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tasks = null,}) {
  return _then(TasksUpdated(
null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,
  ));
}


}

/// @nodoc


class AddTaskEvent implements TaskEvent {
  const AddTaskEvent(this.task);
  

 final  TaskEntity task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTaskEventCopyWith<AddTaskEvent> get copyWith => _$AddTaskEventCopyWithImpl<AddTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskEvent&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.addTask(task: $task)';
}


}

/// @nodoc
abstract mixin class $AddTaskEventCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $AddTaskEventCopyWith(AddTaskEvent value, $Res Function(AddTaskEvent) _then) = _$AddTaskEventCopyWithImpl;
@useResult
$Res call({
 TaskEntity task
});




}
/// @nodoc
class _$AddTaskEventCopyWithImpl<$Res>
    implements $AddTaskEventCopyWith<$Res> {
  _$AddTaskEventCopyWithImpl(this._self, this._then);

  final AddTaskEvent _self;
  final $Res Function(AddTaskEvent) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(AddTaskEvent(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskEntity,
  ));
}


}

/// @nodoc


class UpdateTaskEvent implements TaskEvent {
  const UpdateTaskEvent(this.task);
  

 final  TaskEntity task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTaskEventCopyWith<UpdateTaskEvent> get copyWith => _$UpdateTaskEventCopyWithImpl<UpdateTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTaskEvent&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.updateTask(task: $task)';
}


}

/// @nodoc
abstract mixin class $UpdateTaskEventCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $UpdateTaskEventCopyWith(UpdateTaskEvent value, $Res Function(UpdateTaskEvent) _then) = _$UpdateTaskEventCopyWithImpl;
@useResult
$Res call({
 TaskEntity task
});




}
/// @nodoc
class _$UpdateTaskEventCopyWithImpl<$Res>
    implements $UpdateTaskEventCopyWith<$Res> {
  _$UpdateTaskEventCopyWithImpl(this._self, this._then);

  final UpdateTaskEvent _self;
  final $Res Function(UpdateTaskEvent) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(UpdateTaskEvent(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskEntity,
  ));
}


}

/// @nodoc


class DeleteTaskEvent implements TaskEvent {
  const DeleteTaskEvent(this.taskId);
  

 final  String taskId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTaskEventCopyWith<DeleteTaskEvent> get copyWith => _$DeleteTaskEventCopyWithImpl<DeleteTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTaskEvent&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TaskEvent.deleteTask(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $DeleteTaskEventCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $DeleteTaskEventCopyWith(DeleteTaskEvent value, $Res Function(DeleteTaskEvent) _then) = _$DeleteTaskEventCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class _$DeleteTaskEventCopyWithImpl<$Res>
    implements $DeleteTaskEventCopyWith<$Res> {
  _$DeleteTaskEventCopyWithImpl(this._self, this._then);

  final DeleteTaskEvent _self;
  final $Res Function(DeleteTaskEvent) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(DeleteTaskEvent(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FilterTasks implements TaskEvent {
  const FilterTasks(this.filter);
  

 final  TaskFilter filter;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterTasksCopyWith<FilterTasks> get copyWith => _$FilterTasksCopyWithImpl<FilterTasks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterTasks&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'TaskEvent.filterTasks(filter: $filter)';
}


}

/// @nodoc
abstract mixin class $FilterTasksCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $FilterTasksCopyWith(FilterTasks value, $Res Function(FilterTasks) _then) = _$FilterTasksCopyWithImpl;
@useResult
$Res call({
 TaskFilter filter
});




}
/// @nodoc
class _$FilterTasksCopyWithImpl<$Res>
    implements $FilterTasksCopyWith<$Res> {
  _$FilterTasksCopyWithImpl(this._self, this._then);

  final FilterTasks _self;
  final $Res Function(FilterTasks) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(FilterTasks(
null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as TaskFilter,
  ));
}


}

/// @nodoc
mixin _$TaskState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState()';
}


}

/// @nodoc
class $TaskStateCopyWith<$Res>  {
$TaskStateCopyWith(TaskState _, $Res Function(TaskState) __);
}


/// Adds pattern-matching-related methods to [TaskState].
extension TaskStatePatterns on TaskState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TaskInitial value)?  initial,TResult Function( TaskLoading value)?  loading,TResult Function( TaskLoaded value)?  loaded,TResult Function( TaskError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial(_that);case TaskLoading() when loading != null:
return loading(_that);case TaskLoaded() when loaded != null:
return loaded(_that);case TaskError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TaskInitial value)  initial,required TResult Function( TaskLoading value)  loading,required TResult Function( TaskLoaded value)  loaded,required TResult Function( TaskError value)  error,}){
final _that = this;
switch (_that) {
case TaskInitial():
return initial(_that);case TaskLoading():
return loading(_that);case TaskLoaded():
return loaded(_that);case TaskError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TaskInitial value)?  initial,TResult? Function( TaskLoading value)?  loading,TResult? Function( TaskLoaded value)?  loaded,TResult? Function( TaskError value)?  error,}){
final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial(_that);case TaskLoading() when loading != null:
return loading(_that);case TaskLoaded() when loaded != null:
return loaded(_that);case TaskError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TaskEntity> allTasks,  TaskFilter filter)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial();case TaskLoading() when loading != null:
return loading();case TaskLoaded() when loaded != null:
return loaded(_that.allTasks,_that.filter);case TaskError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TaskEntity> allTasks,  TaskFilter filter)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TaskInitial():
return initial();case TaskLoading():
return loading();case TaskLoaded():
return loaded(_that.allTasks,_that.filter);case TaskError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TaskEntity> allTasks,  TaskFilter filter)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial();case TaskLoading() when loading != null:
return loading();case TaskLoaded() when loaded != null:
return loaded(_that.allTasks,_that.filter);case TaskError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TaskInitial extends TaskState {
  const TaskInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState.initial()';
}


}




/// @nodoc


class TaskLoading extends TaskState {
  const TaskLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState.loading()';
}


}




/// @nodoc


class TaskLoaded extends TaskState {
  const TaskLoaded(final  List<TaskEntity> allTasks, this.filter): _allTasks = allTasks,super._();
  

 final  List<TaskEntity> _allTasks;
 List<TaskEntity> get allTasks {
  if (_allTasks is EqualUnmodifiableListView) return _allTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allTasks);
}

 final  TaskFilter filter;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskLoadedCopyWith<TaskLoaded> get copyWith => _$TaskLoadedCopyWithImpl<TaskLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskLoaded&&const DeepCollectionEquality().equals(other._allTasks, _allTasks)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allTasks),filter);

@override
String toString() {
  return 'TaskState.loaded(allTasks: $allTasks, filter: $filter)';
}


}

/// @nodoc
abstract mixin class $TaskLoadedCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory $TaskLoadedCopyWith(TaskLoaded value, $Res Function(TaskLoaded) _then) = _$TaskLoadedCopyWithImpl;
@useResult
$Res call({
 List<TaskEntity> allTasks, TaskFilter filter
});




}
/// @nodoc
class _$TaskLoadedCopyWithImpl<$Res>
    implements $TaskLoadedCopyWith<$Res> {
  _$TaskLoadedCopyWithImpl(this._self, this._then);

  final TaskLoaded _self;
  final $Res Function(TaskLoaded) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? allTasks = null,Object? filter = null,}) {
  return _then(TaskLoaded(
null == allTasks ? _self._allTasks : allTasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as TaskFilter,
  ));
}


}

/// @nodoc


class TaskError extends TaskState {
  const TaskError(this.message): super._();
  

 final  String message;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskErrorCopyWith<TaskError> get copyWith => _$TaskErrorCopyWithImpl<TaskError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TaskState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TaskErrorCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory $TaskErrorCopyWith(TaskError value, $Res Function(TaskError) _then) = _$TaskErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TaskErrorCopyWithImpl<$Res>
    implements $TaskErrorCopyWith<$Res> {
  _$TaskErrorCopyWithImpl(this._self, this._then);

  final TaskError _self;
  final $Res Function(TaskError) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TaskError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
