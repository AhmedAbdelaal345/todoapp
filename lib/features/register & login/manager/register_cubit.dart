import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/register%20&%20login/data/model/user_model.dart';
import 'package:todoapp/features/register%20&%20login/data/repo/register_repo.dart';
import 'package:todoapp/features/register%20&%20login/manager/register_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super((OnboardingInitialState()));
  static OnboardingCubit get(context) => BlocProvider.of(context);
  OnboardingRepo save = OnboardingRepo();
  LoginRepo log = LoginRepo();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conforimcontroller = TextEditingController();

  void onboardingOnpressed() async {
    emit(OnboardingInitialState());

    emit(await OnboardingLoadingState());
    var response = await save.register(
      user: UserModel(
        name: namecontroller.text,
        password: passwordcontroller.text,
        conforim: conforimcontroller.text,
      ),
    );
    response.fold(
      //left
      (String error) {
        emit(OnboardingErrorState(error: error));
      },
      //right
      (r) {
        emit(OnboardingSucessState());
      },
    );
  }

  void Login() async {
    emit(OnboardingInitialState());
    emit(await OnboardingLoadingState());
    var response = await log.Login(
      user: UserModel(
        name: namecontroller.text,
        password: passwordcontroller.text,
      ),
    );
    response.fold(
      (String error) {
        emit(OnboardingErrorState(error: error));
      },
      (r) {
        emit(OnboardingSucessState());
      },
    );
  }
}
