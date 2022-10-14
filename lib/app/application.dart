import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'routes/app_pages.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            title: "Chat App",
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.INTRODUCTION,
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
