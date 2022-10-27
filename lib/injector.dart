import 'package:chat_app/app/controllers/firestore_controller.dart';
import 'package:chat_app/app/modules/introduction/controllers/introduction_controller.dart';
import 'package:chat_app/app/utils/pref_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app/controllers/auth_controller.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton(() => PrefHelper());
  locator.registerLazySingleton(() => IntroductionController(locator()));
  locator.registerLazySingleton(
    () => AuthController(locator(), locator(), locator()),
  );
  locator.registerLazySingleton(() => GoogleSignIn());
  locator.registerLazySingleton(() => FirebaseAuth.instance);
  locator.registerLazySingleton(() => FirebaseFirestore.instance);
  locator.registerLazySingleton(() => FirestoreController(locator()));
}
