import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/update_status_controller.dart';

class UpdateStatusView extends GetView<UpdateStatusController> {
  const UpdateStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Status'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              cursorColor: Colors.red[900],
              decoration: InputDecoration(
                hintText: 'Status',
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
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                backgroundColor: Colors.red[900],
                fixedSize: Size(Get.width, 50),
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
