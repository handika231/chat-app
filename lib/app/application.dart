import 'package:chat_app/app/modules/introduction/controllers/introduction_controller.dart';
import 'package:chat_app/injector.dart' as di;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'routes/app_pages.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final splashController =
      Get.put(di.locator<IntroductionController>(), permanent: true);
  @override
  void initState() {
    super.initState();
    splashController.getIsSplash();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            title: "Chat App",
            debugShowCheckedModeBanner: false,
            initialRoute: splashController.isSplash.value
                ? Routes.PROFILE
                : AppPages.INTRODUCTION,
            getPages: AppPages.routes,
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Lottie.asset('assets/splash.json'),
              ),
            ),
          );
        }
      },
    );
  }
}
