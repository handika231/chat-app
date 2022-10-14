import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/login.json",
              height: 300,
              width: Get.width,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
                backgroundColor: Colors.green[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              icon: const Icon(Icons.login),
              onPressed: () {},
              label: const Text("Login With Google"),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Chat App',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'v1.0.0',
            )
          ],
        ),
      ),
    );
  }
}
