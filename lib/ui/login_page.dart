import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_challenge/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          child: Container(
            color: Colors.white54,
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: controller.user,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'Enter email',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controller.pass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabled: true,
                    hintText: 'Enter password',
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
