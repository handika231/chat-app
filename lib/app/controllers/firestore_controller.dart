import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreController extends GetxController {
  FirebaseFirestore firestore;
  FirestoreController(this.firestore);
  CollectionReference get users => firestore.collection('users');
}
