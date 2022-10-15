import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
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
            onPressed: () {},
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
          const HeaderContent(),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text('Update Status'),
                  leading: const Icon(Icons.note_add_outlined),
                  trailing: const Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {},
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

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AvatarGlow(
            endRadius: 100,
            duration: const Duration(seconds: 2),
            glowColor: Colors.grey,
            curve: Curves.fastOutSlowIn,
            repeat: true,
            child: Container(
              width: 140,
              height: 140,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: Text(
              'Lorem Ipsum',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Center(
            child: Text(
              'Lorem Ipsum@gmail.com',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
