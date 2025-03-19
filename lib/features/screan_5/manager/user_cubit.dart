import 'package:either_option/src/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/screan_5/data/models/user_model.dart';
import 'package:todoapp/features/screan_5/data/repo/user_repo.dart';
import 'package:todoapp/features/screan_5/manager/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitialState());
  UserRepo save = UserRepo();
  UserCubit get(context) => BlocProvider.of(context);
  TextEditingController username = TextEditingController();
  void onpressedCubitUser() async {
    emit(UserInitialState());
    emit(await UserLoadinState());
    var response = await save.check(username: username.text);
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

