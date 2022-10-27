import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeProfileController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController statusController;
  List<TextEditingController> listOfController = [];
  @override
  void onInit() {
    super.onInit();
    listOfController
        .addAll([nameController, emailController, statusController]);
    for (var element in listOfController) {
      element = TextEditingController();
    }
  }

  @override
  void onClose() {
    super.onClose();
    for (var element in listOfController) {
      element.dispose();
    }
  }
}
