import 'package:either_option/either_option.dart';
import 'package:todoapp/core/helper/api_helper.dart';
import 'package:todoapp/core/network/api_response.dart';
import 'package:todoapp/core/network/end_point.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/features/screan_5/data/models/user_model.dart';

class UserRepo {
  UserRepo();
  Future<Either<String, UserModel>> check({required String username}) async {
    try {
      ApiHelper api = ApiHelper();
      ApiResponse response = await api.putRequest(
        endpoint: EndPoint.update,
        data: {"username": username},
        isAuthried: true,
      );
      if (response.status) {
        UserLoginModel userloginmodel = UserLoginModel.fromJson(response.data);
        return Right(userloginmodel.user!);
      } else {
        return Left(response.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }
}

class PassRepo {
  PassRepo();
  Future<Either<String, UserModel>> checkpass({
    required String oldPass,
    required String newPass,
    required String confirmPass,
  }) async {
    try {
      ApiHelper api = ApiHelper();
      ApiResponse response = await api.postRequest(
        endpoint: EndPoint.change_password,
        data: {
          "current_password": oldPass,
          "new_password": newPass,
          "new_password_confirm": confirmPass,
        },

        isAuthried: true,
      );
      if (response.status) {
        UserLoginModel userloginmodel = UserLoginModel.fromJson(response.data);
        return Right(userloginmodel.user!);
      } else {
        return Left(response.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }
}
