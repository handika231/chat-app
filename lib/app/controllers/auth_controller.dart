import 'package:chat_app/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  AuthController(this._auth, this._googleSignIn);
  Future<UserCredential> login() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      debugPrint(googleUser.toString());
      debugPrint('credential: $credential');

      // Once signed in, return the UserCredential
      return await _auth.signInWithCredential(credential).then((value) {
        Get.offAllNamed(Routes.HOME);
        return value;
      });
    } catch (e) {
      throw Exception('error: $e');
    }
  }

  void logout() {
    Get.offAllNamed(Routes.LOGIN);
  }
}
