import 'package:chat_app/app/routes/app_pages.dart';
import 'package:chat_app/app/utils/pref_helper.dart';
import 'package:get/get.dart';

class IntroductionController extends GetxController {
  PrefHelper prefHelper;
  IntroductionController(this.prefHelper);
  RxBool isSplash = false.obs;

  Future saveSplash() async {
    await prefHelper.isUserSplash(true);
    Get.offAllNamed(Routes.HOME);
  }

  Future getIsSplash() async {
    isSplash.value = await prefHelper.getUserSplash();
  }
}
