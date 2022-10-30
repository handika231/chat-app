import 'package:chat_app/app/controllers/firestore_controller.dart';
import 'package:chat_app/app/models/user_model.dart';
import 'package:chat_app/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  UserModel user = UserModel();
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final FirestoreController _firestoreController;
  UserCredential?
      _userCredential; // This is the user that is currently logged in
  AuthController(this._auth, this._googleSignIn, this._firestoreController);

  Future login() async {
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
      await _auth.signInWithCredential(credential).then((value) {
        Get.offAllNamed(Routes.HOME);
        _userCredential = value;
      });
      await _firestoreController.users.doc(googleUser?.email).set({
        'uid': googleUser?.id,
        'name': googleUser?.displayName,
        'email': googleUser?.email,
        'photoUrl': googleUser?.photoUrl,
        'status': '',
        'creationTime': _userCredential?.user?.metadata.creationTime.toString(),
        'lastSignInTime':
            _userCredential?.user?.metadata.lastSignInTime.toString(),
        'updateTime': _userCredential?.user?.metadata.lastSignInTime.toString(),
      });
      _firestoreController.users.doc(googleUser?.email).get().then((value) {
        user = UserModel.fromJson(value.data()! as Map<String, dynamic>);
      });

      // Once signed in, return the UserCredential

    } catch (e) {
      throw Exception('error: $e');
    }
  }

  Future logout() async {
    await _googleSignIn.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
