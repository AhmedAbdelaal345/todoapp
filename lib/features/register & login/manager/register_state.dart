abstract class OnboardingState {}

class OnboardingInitialState extends OnboardingState {}

class OnboardingLoadingState extends OnboardingState {}

class OnboardingSucessState extends OnboardingState {
  String? msg;
  OnboardingSucessState({this.msg});
}

class OnboardingErrorState extends OnboardingState {
  String error;
  OnboardingErrorState({required this.error});
}
