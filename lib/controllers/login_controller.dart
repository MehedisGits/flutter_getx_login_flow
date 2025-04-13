import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_challenge/services/auth_service.dart';

class LoginController extends GetxController{

  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();

  final AuthServices _authServices = Get.find<AuthServices>();

  void login() {
    _authServices.login(user.text.toString(), pass.text.toString());
  }

  void logout() {
    _authServices.logout();
}
}