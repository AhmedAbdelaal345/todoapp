import 'package:either_option/either_option.dart';
import 'package:todoapp/features/screan_2/data/models/task_model.dart';

class TaskRepo {
  TaskRepo();
  late TaskModel task;
  Either<String, TaskModel> save({required TaskModel task}) {
    try {
      if (task.title.isEmpty) {
        throw Exception("The Title Is Empty");
      } else if (task.description.isEmpty) {
        return Left("The Description Is Empty");
      } else {
        this.task = task;
        return Right(this.task);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
