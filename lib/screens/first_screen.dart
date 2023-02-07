import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_99/screens/auth_screen/auth.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.put(AuthController()).logout();
          },
          child: const Text('Log out'),
        ),
      ),
    );
  }
}
