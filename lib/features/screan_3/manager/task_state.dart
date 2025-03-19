abstract class TaskState {}

class TaskInitialState extends TaskState {}

class TaskLoadinState extends TaskState {}

class TaskLoadedState extends TaskState {
  final List<dynamic> tasks;
  TaskLoadedState(this.tasks);
}

class TaskEmptyState extends TaskState {}

class TaskErrorState extends TaskState {
  final String error;
  TaskErrorState(this.error);
}