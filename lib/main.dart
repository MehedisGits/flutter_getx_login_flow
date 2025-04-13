import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_challenge/bindings/login_binding.dart';
import 'package:getx_challenge/middleware/auth_middleware.dart';
import 'package:getx_challenge/routes/routes.dart';
import 'package:getx_challenge/ui/login_page.dart';

import 'ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppPages.pages,
      initialRoute: '/login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
