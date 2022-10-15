import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  SearchView({Key? key}) : super(key: key);
  final List<Widget> listOfSearch = List.generate(
    20,
    (index) => ListTile(
      trailing: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.CHAT_ROOM);
        },
        child: const Chip(
          label: Text('message'),
        ),
      ),
      title: Text(
        'Orang ke ${index + 1}',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: const Text(
        'person@gmail.com',
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
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.red[800],
            expandedHeight: 200.0,
            title: const Text(
              'Search',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            floating: true,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  cursorColor: Colors.red[800],
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search, color: Colors.red[800]),
                  ),
                ),
              ),
            ),
          ),
          (listOfSearch.isEmpty
              ? SliverToBoxAdapter(
                  child: Center(
                    child: Lottie.asset('assets/empty.json'),
                  ),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return listOfSearch[index];
                  }, childCount: listOfSearch.length),
                ))
        ],
      ),
    );
  }
}
