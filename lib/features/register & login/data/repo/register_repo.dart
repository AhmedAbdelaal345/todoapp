import 'package:dio/dio.dart';
import 'package:either_option/either_option.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/core/helper/api_helper.dart';
import 'package:todoapp/core/network/api_response.dart';
import 'package:todoapp/core/network/end_point.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/features/register%20&%20login/data/model/user_model.dart';

class OnboardingRepo {
  OnboardingRepo();
  late UserModel user;

  Future<Either<String, String>> regist({
    required String username,
    required String password,
    required String confirm,
  }) async {
    try {
      ApiHelper api = ApiHelper();
      ApiResponse response = await api.postRequest(
        endpoint: EndPoint.register,
        data: {"username": username, "password": password},
        isAuthried: false,
        isFormData: true,
      );
      if (confirm != password) {
        throw Exception("The Confirm password is Wrong");
      }
      if (response.status) {
        return Right(response.message);
      } else {
        return Left(response.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }
}

class LoginRepo {
  LoginRepo();
  Future<Either<String, UserModel>> login({
    required username,
    required password,
  }) async {
    try {
      ApiHelper api = ApiHelper();
      ApiResponse response = await api.postRequest(
        endpoint: EndPoint.login,
        data: {"username": username, "password": password},
        isAuthried: false,
        isFormData: true,
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
