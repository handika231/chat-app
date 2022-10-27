import 'package:chat_app/app/controllers/auth_controller.dart';
import 'package:chat_app/app/modules/introduction/controllers/introduction_controller.dart';
import 'package:chat_app/injector.dart' as di;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    final authC = Get.put(AuthController(), permanent: true);
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            builder: (context, child) => ResponsiveWrapper.builder(
              child,
              maxWidth: 1200,
              minWidth: 400,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
            ),
            title: "Chat App",
            debugShowCheckedModeBanner: false,
            initialRoute: splashController.isSplash.value
                ? Routes.LOGIN
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
