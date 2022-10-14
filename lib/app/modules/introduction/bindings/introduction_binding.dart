import 'package:chat_app/injector.dart' as di;
import 'package:get/get.dart';

import '../controllers/introduction_controller.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(
      () => di.locator<IntroductionController>(),
    );
  }
}
