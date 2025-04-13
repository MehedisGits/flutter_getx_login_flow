import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_challenge/services/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isLoggedIn = AuthServices.to.isLoggedIn.value;

    if (!isLoggedIn) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }
}
