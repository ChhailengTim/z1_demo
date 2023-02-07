import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:new_99/router/router.dart';

class AuthController extends GetxController {
  final TextEditingController emailAddress = TextEditingController();
  final TextEditingController password = TextEditingController();
  //Auth instance
  static AuthController instance = Get.find();

  final context = router.routerDelegate.navigatorKey.currentContext;

  //email, pass, name...
  late Rx<User?> user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    debugPrint('Function is Ready . . .');
    user = Rx<User?>(auth.currentUser);
    user.bindStream(auth.userChanges());

    ever<User?>(
      user,
      (_) {
        _initail();
      },
    );
  }

  //initail screen
  _initail() {
    print('Listening . .  $user');
    if (user.value == null) {
      print('hello');
      context?.go('/');
    } else {
      print('hello');
      context?.go('/firstscreen');
    }
  }

  //singup
  void signup(String email, pass) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: emailAddress.text,
        password: password.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  //signin
  void signin() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: emailAddress.text,
        password: password.text,
      );
    } catch (e) {
      print(e);
    }
  }

  void logout() async {
    await auth.signOut().then((value) {});
  }
}
