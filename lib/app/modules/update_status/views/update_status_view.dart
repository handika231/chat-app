import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_status_controller.dart';

class UpdateStatusView extends GetView<UpdateStatusController> {
  const UpdateStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateStatusView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UpdateStatusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
