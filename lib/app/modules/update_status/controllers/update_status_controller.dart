import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateStatusController extends GetxController {
  late TextEditingController statusController;

  @override
  void onInit() {
    super.onInit();
    statusController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    statusController.dispose();
  }
}
