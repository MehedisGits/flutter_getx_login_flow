import 'package:get/get.dart';
import 'package:getx_challenge/controllers/login_controller.dart';
import 'package:getx_challenge/services/auth_service.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthServices());
  }

}