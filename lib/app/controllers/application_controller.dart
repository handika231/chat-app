import 'package:get/get.dart';

enum Status { loading, success, error, noData }

class ApplicationController extends GetxController {
  Rx<Status> status = Status.loading.obs;
  ApplicationController() {
    init();
  }
  Future init() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      status(Status.success);
    } catch (e) {
      status(Status.error);
    }
  }
}
