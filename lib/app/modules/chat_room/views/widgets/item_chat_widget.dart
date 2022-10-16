import 'package:flutter/material.dart';

class ItemChat extends StatelessWidget {
  final bool isSender;
  const ItemChat({super.key, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      color: Colors.orange,
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text('Hello Selamat Siang' * 20),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text('12:00 PM'),
        ],
      ),
    );
  }
}
