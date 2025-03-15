import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/screan_2/data/models/task_model.dart';
import 'package:todoapp/features/screan_2/data/repo/task_repo.dart';
import 'package:todoapp/features/screan_2/manager/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit():super((TaskInitialState()));
  TaskRepo add = TaskRepo();
  TaskCubit get(context) => BlocProvider.of(context);
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  void onpressedTaskCubit() async {
    emit(TaskInitialState());
    emit(await TaskLoadinState());
    var response = await add.save(
      task: TaskModel(
        description: descriptioncontroller.text,
        title: titlecontroller.text,
      ),
    );
    response.fold(
      (String error) {
        emit(TaskErrorState(error: error));
      },
      (r) {
        emit(TaskSuccessState());
      },
    );
  }
}
