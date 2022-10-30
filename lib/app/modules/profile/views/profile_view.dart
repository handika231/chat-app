import 'package:chat_app/app/modules/profile/widgets/header_content.dart';
import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  final authC = Get.find<AuthController>(); // <--- Add this line
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('ProfileView'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              authC.logout();
            },
            icon: const Icon(Icons.logout),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderContent(),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.UPDATE_STATUS);
                  },
                  title: const Text('Update Status'),
                  leading: const Icon(Icons.note_add_outlined),
                  trailing: const Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.CHANGE_PROFILE);
                  },
                  title: const Text('Change Profile'),
                  leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {},
                  title: const Text('Change Theme'),
                  leading: const Icon(Icons.color_lens),
                  trailing: const Text('Light'),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
