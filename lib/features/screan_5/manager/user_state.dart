class UserState {}

class UserInitialState extends UserState {}

class UserLoadinState extends UserState {}

class UserSuccessState extends UserState {}

class UserErrorState extends UserState {
  UserErrorState({required this.error});
  String error;
  
}
