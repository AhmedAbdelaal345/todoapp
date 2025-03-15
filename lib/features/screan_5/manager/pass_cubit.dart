import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/screan_5/data/models/user_model.dart';
import 'package:todoapp/features/screan_5/data/repo/user_repo.dart';
import 'package:todoapp/features/screan_5/manager/user_state.dart';

class PassCubit extends Cubit<UserState> {
  PassCubit() : super(UserInitialState());

  UserRepo savepass = UserRepo();
  PassCubit get(context) => BlocProvider.of(context);
  TextEditingController oldPassControl = TextEditingController();
  TextEditingController newPassControl = TextEditingController();
  TextEditingController confirmassControl = TextEditingController();

  Future<void> onpressedCubitPassword() async {
    emit(UserInitialState());
    emit(await UserLoadinState());
    var response = savepass.check(
      UserModel(
        oldPass: oldPassControl.text,
        newPass: newPassControl.text,
        confirmPass: confirmassControl.text,
      ),
    );
    response.fold(
      (String error) {
        emit(UserErrorState(error: error));
      },
      (r) {
        emit(UserSuccessState());
      },
    );
  }
}
