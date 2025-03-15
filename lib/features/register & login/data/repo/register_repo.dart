import 'package:either_option/either_option.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/features/register%20&%20login/data/model/user_model.dart';

class OnboardingRepo {
  OnboardingRepo();
  late UserModel user;

  Future<Either<String, UserModel>> register({required UserModel user}) async {
    try {
      if (user.name!.isEmpty) {
        throw Exception("Name is Empty");
      } else if (user.password!.isEmpty) {
        throw Exception("PassWord is Empty");
      } else if (user.conforim!.isEmpty) {
        throw Exception("You Must Confirm The Password");
      } else if (user.password != user.conforim) {
        throw Exception("The Password & Confirm isn't Equal");
      } else {
        this.user = user;
        await Future.delayed(Duration(milliseconds: 1000));
        return Right(this.user);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}

class LoginRepo {
  LoginRepo();
  late UserModel u;
  Future<Either<String, UserModel>> Login({required UserModel user}) async {
    try {
      if (user.name!.isEmpty) {
        throw Exception("Name is Empty");
      } else if (user.password!.isEmpty) {
        throw Exception("PassWord is Empty");
      } else {
        await Future.delayed(Duration(milliseconds: 1000));
        u = user;
        return Right(u);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
