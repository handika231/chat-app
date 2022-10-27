import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/change_profile_controller.dart';

class ChangeProfileView extends GetView<ChangeProfileController> {
  const ChangeProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: const [Icon(Icons.save)],
        title: const Text('Change Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            AvatarGlow(
              endRadius: 80,
              duration: const Duration(seconds: 2),
              glowColor: Colors.grey,
              repeat: true,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  image: const DecorationImage(
                    image: AssetImage('assets/profile.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              hint: 'Email',
              controller: controller.emailController,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              hint: 'Name',
              controller: controller.nameController,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              hint: 'Status',
              controller: controller.statusController,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'No Image',
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Choose Image",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('UPDATE'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.red[900],
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: Colors.red[900]!,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red[900]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
