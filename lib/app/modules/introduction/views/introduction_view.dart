import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        done: const Text('Done'),
        onDone: () async {
          controller.saveSplash();
        },
        onSkip: () {
          controller.saveSplash();
        },
        next: const Icon(Icons.arrow_forward),
        skip: const Text('Skip'),
        pages: [
          PageViewModel(
            title: "Welcome to Chat App",
            body:
                "Chat App is a messaging app that allows you to chat with your friends",
            image: Center(
              child: Lottie.asset(
                "assets/laptop.json",
                height: 175.0,
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          PageViewModel(
            title: "Chat with your friends",
            body: "Chat App allows you to chat with your friends",
            image: Center(
              child: Lottie.asset(
                "assets/driver.json",
                height: 175.0,
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          PageViewModel(
            title: "Chat with your friends",
            body: "Chat App allows you to chat with your friends",
            image: Center(
              child: Lottie.asset(
                "assets/register.json",
                height: 175.0,
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
            ),
          )
        ],
      ),
    );
  }
}
