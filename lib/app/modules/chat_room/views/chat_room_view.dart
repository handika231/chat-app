import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chat_room_controller.dart';
import 'widgets/item_chat_widget.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  const ChatRoomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: const ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/profile.png',
            ),
          ),
          title: Text('Name'),
          subtitle: Text('Status'),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                ItemChat(isSender: false),
                ItemChat(isSender: true),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.red[900],
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions),
                      ),
                      hintText: 'Type a message',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Material(
                  color: Colors.red[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
