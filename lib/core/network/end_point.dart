import 'package:todoapp/core/resources/str.dart';

abstract class EndPoint {
  static const String baseurl = "https://nti-production.up.railway.app/api/";
  static const String login = "login";
  static const String register = "register";
  static const String update = "update_profile";
  static const String change_password = "change_password";
  static const String new_task = "new_task";
}

abstract class ApiKeys {
  static const String accessToken = "access_token";
  static const String refreshToken = "refresh_token";
}
