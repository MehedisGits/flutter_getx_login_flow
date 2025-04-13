import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_challenge/controllers/login_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Challenges')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome', style: TextStyle(fontSize: 22)),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                controller.logout();
              },
              child: Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}
