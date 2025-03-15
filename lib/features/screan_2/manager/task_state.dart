class TaskState {}

class TaskInitialState extends TaskState {}

class TaskLoadinState extends TaskState {}

class TaskSuccessState extends TaskState {}

class TaskErrorState extends TaskState {
  TaskErrorState({required this.error});
  String error;
}
