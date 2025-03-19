import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/helper/api_helper.dart';
import 'package:todoapp/core/network/api_response.dart';
import 'package:todoapp/core/network/end_point.dart';
import 'package:todoapp/features/screan_2/manager/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitialState());

  final ApiHelper _apiHelper = ApiHelper();

  Future<void> fetchTasks() async {
    emit(TaskLoadinState());
    try {
      // Fetch tasks from the backend
      ApiResponse response = await _apiHelper.getRequest(
        endpoint: EndPoint.new_task, // Replace with your actual endpoint
        data: {},
      );

      if (response.status && response.data != null) {
        // Assuming the response.data contains a list of tasks
        List<dynamic> tasks = response.data['tasks']; // Adjust based on your API response structure

        if (tasks.isEmpty) {
          emit(TaskEmptyState()); // No tasks found
        } else {
          emit(TaskLoadedState(tasks)); // Tasks found
        }
      } else {
        emit(TaskErrorState(response.message)); // Handle API error
      }
    } catch (e) {
      emit(TaskErrorState(e.toString())); // Handle unexpected errors
    }
  }
}