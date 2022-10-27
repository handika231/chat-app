import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> listOfChat = List.generate(
    20,
    (index) => ListTile(
      onTap: () {
        Get.toNamed(Routes.CHAT_ROOM);
      },
      trailing: const Chip(
        label: Text('3'),
      ),
      title: Text(
        'Orang ke ${index + 1}',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: const Text(
        'status orang',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      ),
      leading: CircleAvatar(
        radius: 25,
        child: Image.asset('assets/profile.png'),
      ),
    ),
  ).reversed.toList();
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.SEARCH);
        },
        backgroundColor: Colors.red[900],
        child: const Icon(
          Icons.search,
          size: 35,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const HeaderContent(),
            Expanded(
              child: ListView.builder(
                itemCount: listOfChat.length,
                itemBuilder: (BuildContext context, int index) {
                  return listOfChat[index];
                },
              ),
            )
          ],
        ),
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
    return Material(
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Chats',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red[900],
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.PROFILE);
                },
                borderRadius: BorderRadius.circular(50),
                child: const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
