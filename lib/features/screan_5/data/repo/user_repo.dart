import 'package:either_option/either_option.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/features/screan_5/data/models/user_model.dart';

class UserRepo {
  late UserModel user;
  Either<String, UserModel> check(UserModel user) {
    try {
      if (user.user!.isNotEmpty) {
        this.user = user;
        FixedStr.shared = this.user.toString();
      } else {
        throw Exception("please enter the user name");
      }
      return Right(this.user);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

class PassRepo {
  late UserModel pass;
  Either<String, UserModel> checkpass(UserModel user) {
    try {
      if (pass.oldPass!.isEmpty) {
        throw Exception("Old PassWord Is Empty");
      } else if (pass.newPass!.isEmpty) {
        throw Exception("The New PassWord Is Empty");
      } else if (pass.confirmPass != pass.newPass) {
        throw Exception("The Confirm Isn't Equal Newpassword");
      } else if (pass.oldPass != FixedStr.sharedpassword) {
        throw Exception("The old PassWord Is Wrong");
      } else {
        return Right(this.pass);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
