import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_99/screens/auth_screen/auth.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: authC.emailAddress,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText: 'Email',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: authC.password,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              authC.signin();
            },
            child: const Text('Sign in'),
          ),
          ElevatedButton(
            onPressed: () {
              authC.signup(
                authC.emailAddress.text,
                authC.password,
              );
            },
            child: const Text('Sign up'),
          ),
        ],
      )),
    );
  }
}
