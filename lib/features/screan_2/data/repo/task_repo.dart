import 'package:either_option/either_option.dart';
import 'package:todoapp/core/helper/api_helper.dart';
import 'package:todoapp/core/network/api_response.dart';
import 'package:todoapp/core/network/end_point.dart';
import 'package:todoapp/features/screan_2/data/models/task_model.dart';

class TaskRepo {
  TaskRepo();

  Future<Either<String, TaskModel>> save({required String title, required String description}) async {
    try {
      ApiHelper api = ApiHelper();
      ApiResponse response = await api.postRequest(
        endpoint: EndPoint.new_task,
        data: {
          "title": title,
          "description": description
        },
        isAuthried: true
      );

      if (response.status) {
        // Correctly parse the response into the TaskModel
        TaskModel taskModel = TaskModel.fromJson(response.data);
        return Right(taskModel);
      } else {
        return Left(response.message); // Return the error message
      }
    } catch (e) {
      return Left(e.toString()); // Return any exception message
    }
  }
}
