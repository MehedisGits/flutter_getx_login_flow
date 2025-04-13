import 'package:get/get.dart';

class AuthServices extends GetxService{
  static AuthServices get to => Get.find();

  RxBool isLoggedIn = false.obs;

  void login(String user, String pass) {
    if(user == 'admin' && pass == 'password'){
      isLoggedIn.value = true;
      Get.offAllNamed('/home');
    } else {
      Get.snackbar("Login Failed", "Invalid credentials");
    }
  }

  void logout(){
    isLoggedIn.value = false;
    Get.offAllNamed('/login');
  }
}