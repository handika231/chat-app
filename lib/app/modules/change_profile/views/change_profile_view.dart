import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_profile_controller.dart';

class ChangeProfileView extends GetView<ChangeProfileController> {
  const ChangeProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChangeProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChangeProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
