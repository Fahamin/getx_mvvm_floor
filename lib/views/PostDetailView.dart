import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/post_model.dart';


class PostDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve PostModel directly from Get.arguments
    final PostModel post = Get.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("Post Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              post.body,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
