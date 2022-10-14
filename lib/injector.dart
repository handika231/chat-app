import 'package:chat_app/app/modules/introduction/controllers/introduction_controller.dart';
import 'package:chat_app/app/utils/pref_helper.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton(() => PrefHelper());
  locator.registerLazySingleton(() => IntroductionController(locator()));
}
