abstract class TaskState {}

class TaskInitialState extends TaskState {}

class TaskLoadinState extends TaskState {}

class TaskSuccessState extends TaskState {}

class TaskErrorState extends TaskState {
  final String error;
  TaskErrorState(this.error);
}

class TaskEmptyState extends TaskState {}

class TaskLoadedState extends TaskState {
  final List<dynamic> tasks;
  TaskLoadedState(this.tasks);
}