import 'package:get/get.dart';
import 'package:getx_challenge/bindings/login_binding.dart';
import 'package:getx_challenge/middleware/auth_middleware.dart';
import 'package:getx_challenge/ui/home_page.dart';
import 'package:getx_challenge/ui/login_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: '/home',
      page: () => MyHomePage(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(name: '/login', page: () => LoginPage(), binding: LoginBinding()),
  ];
}
