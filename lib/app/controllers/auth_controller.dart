import 'package:chat_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  void login() {
    Get.offAllNamed(Routes.HOME);
  }
}
