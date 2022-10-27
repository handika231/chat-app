import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatRoomController extends GetxController {
  late TextEditingController textController;
  late FocusNode focusNode;
  RxBool isShowEmoji = false.obs;
  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        isShowEmoji.value = false;
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    textController.dispose();
    focusNode.dispose();
  }
}
